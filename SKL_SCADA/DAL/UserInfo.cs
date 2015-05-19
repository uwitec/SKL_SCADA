using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Data;
using System.Data.SqlClient;
using DBUtility;

namespace DAL
{
	public partial class UserInfo
	{
		public UserInfo()
		{}
		#region  BasicMethod
		/// <summary>
		/// 是否存在该记录
		/// </summary>
		public bool Exists(int id)
		{
			StringBuilder strSql=new StringBuilder();
			strSql.Append("select count(1) from UserInfo");
			strSql.Append(" where id=@id");
			SqlParameter[] parameters = {
					new SqlParameter("@id", SqlDbType.Int,4)
			};
			parameters[0].Value = id;

			return DbHelperSQL.Exists(strSql.ToString(),parameters);
		}


		/// <summary>
		/// 增加一条数据
		/// </summary>
        public int Add(MODEL.UserInfo model)
		{
			StringBuilder strSql=new StringBuilder();
			strSql.Append("insert into UserInfo(");
			strSql.Append("name,password,voicequery,question,answer,realname,sex,birthday,countries,certificate,number,telephone,fixedx,email,address,postcode,passengers)");
			strSql.Append(" values (");
			strSql.Append("@name,@password,@voicequery,@question,@answer,@realname,@sex,@birthday,@countries,@certificate,@number,@telephone,@fixedx,@email,@address,@postcode,@passengers)");
			strSql.Append(";select @@IDENTITY");
			SqlParameter[] parameters = {
					new SqlParameter("@name", SqlDbType.VarChar,50),
					new SqlParameter("@password", SqlDbType.VarChar,50),
					new SqlParameter("@voicequery", SqlDbType.VarChar,50),
					new SqlParameter("@question", SqlDbType.VarChar,50),
					new SqlParameter("@answer", SqlDbType.VarChar,50),
					new SqlParameter("@realname", SqlDbType.VarChar,50),
					new SqlParameter("@sex", SqlDbType.VarChar,50),
					new SqlParameter("@birthday", SqlDbType.VarChar,50),
					new SqlParameter("@countries", SqlDbType.VarChar,20),
					new SqlParameter("@certificate", SqlDbType.VarChar,50),
					new SqlParameter("@number", SqlDbType.VarChar,50),
					new SqlParameter("@telephone", SqlDbType.VarChar,50),
					new SqlParameter("@fixedx", SqlDbType.VarChar,50),
					new SqlParameter("@email", SqlDbType.VarChar,50),
					new SqlParameter("@address", SqlDbType.VarChar,50),
					new SqlParameter("@postcode", SqlDbType.VarChar,50),
					new SqlParameter("@passengers", SqlDbType.VarChar,50)};
			parameters[0].Value = model.name;
			parameters[1].Value = model.password;
			parameters[2].Value = model.voicequery;
			parameters[3].Value = model.question;
			parameters[4].Value = model.answer;
			parameters[5].Value = model.realname;
			parameters[6].Value = model.sex;
			parameters[7].Value = model.birthday;
			parameters[8].Value = model.countries;
			parameters[9].Value = model.certificate;
			parameters[10].Value = model.number;
			parameters[11].Value = model.telephone;
			parameters[12].Value = model.fixedx;
			parameters[13].Value = model.email;
			parameters[14].Value = model.address;
			parameters[15].Value = model.postcode;
			parameters[16].Value = model.passengers;

            object obj = DbHelperSQL.GetSingle(strSql.ToString(), parameters);
			if (obj == null)
			{
				return 0;
			}
			else
			{
				return Convert.ToInt32(obj);
			}
		}
		/// <summary>
		/// 更新一条数据
		/// </summary>
        public bool Update(MODEL.UserInfo model)
		{
			StringBuilder strSql=new StringBuilder();
			strSql.Append("update UserInfo set ");
			strSql.Append("name=@name,");
			strSql.Append("password=@password,");
			strSql.Append("voicequery=@voicequery,");
			strSql.Append("question=@question,");
			strSql.Append("answer=@answer,");
			strSql.Append("realname=@realname,");
			strSql.Append("sex=@sex,");
			strSql.Append("birthday=@birthday,");
			strSql.Append("countries=@countries,");
			strSql.Append("certificate=@certificate,");
			strSql.Append("number=@number,");
			strSql.Append("telephone=@telephone,");
			strSql.Append("fixedx=@fixedx,");
			strSql.Append("email=@email,");
			strSql.Append("address=@address,");
			strSql.Append("postcode=@postcode,");
			strSql.Append("passengers=@passengers");
			strSql.Append(" where id=@id");
			SqlParameter[] parameters = {
					new SqlParameter("@name", SqlDbType.VarChar,50),
					new SqlParameter("@password", SqlDbType.VarChar,50),
					new SqlParameter("@voicequery", SqlDbType.VarChar,50),
					new SqlParameter("@question", SqlDbType.VarChar,50),
					new SqlParameter("@answer", SqlDbType.VarChar,50),
					new SqlParameter("@realname", SqlDbType.VarChar,50),
					new SqlParameter("@sex", SqlDbType.VarChar,50),
					new SqlParameter("@birthday", SqlDbType.VarChar,50),
					new SqlParameter("@countries", SqlDbType.VarChar,20),
					new SqlParameter("@certificate", SqlDbType.VarChar,50),
					new SqlParameter("@number", SqlDbType.VarChar,50),
					new SqlParameter("@telephone", SqlDbType.VarChar,50),
					new SqlParameter("@fixedx", SqlDbType.VarChar,50),
					new SqlParameter("@email", SqlDbType.VarChar,50),
					new SqlParameter("@address", SqlDbType.VarChar,50),
					new SqlParameter("@postcode", SqlDbType.VarChar,50),
					new SqlParameter("@passengers", SqlDbType.VarChar,50),
					new SqlParameter("@id", SqlDbType.Int,4)};
			parameters[0].Value = model.name;
			parameters[1].Value = model.password;
			parameters[2].Value = model.voicequery;
			parameters[3].Value = model.question;
			parameters[4].Value = model.answer;
			parameters[5].Value = model.realname;
			parameters[6].Value = model.sex;
			parameters[7].Value = model.birthday;
			parameters[8].Value = model.countries;
			parameters[9].Value = model.certificate;
			parameters[10].Value = model.number;
			parameters[11].Value = model.telephone;
			parameters[12].Value = model.fixedx;
			parameters[13].Value = model.email;
			parameters[14].Value = model.address;
			parameters[15].Value = model.postcode;
			parameters[16].Value = model.passengers;
			parameters[17].Value = model.id;

			int rows=DbHelperSQL.ExecuteSql(strSql.ToString(),parameters);
			if (rows > 0)
			{
				return true;
			}
			else
			{
				return false;
			}
		}

		/// <summary>
		/// 删除一条数据
		/// </summary>
		public bool Delete(int id)
		{
			
			StringBuilder strSql=new StringBuilder();
			strSql.Append("delete from UserInfo ");
			strSql.Append(" where id=@id");
			SqlParameter[] parameters = {
					new SqlParameter("@id", SqlDbType.Int,4)
			};
			parameters[0].Value = id;

			int rows=DbHelperSQL.ExecuteSql(strSql.ToString(),parameters);
			if (rows > 0)
			{
				return true;
			}
			else
			{
				return false;
			}
		}
		/// <summary>
		/// 批量删除数据
		/// </summary>
		public bool DeleteList(string idlist )
		{
			StringBuilder strSql=new StringBuilder();
			strSql.Append("delete from UserInfo ");
			strSql.Append(" where id in ("+idlist + ")  ");
			int rows=DbHelperSQL.ExecuteSql(strSql.ToString());
			if (rows > 0)
			{
				return true;
			}
			else
			{
				return false;
			}
		}


		/// <summary>
		/// 得到一个对象实体
		/// </summary>
        public MODEL.UserInfo GetModel(int id)
		{
			
			StringBuilder strSql=new StringBuilder();
			strSql.Append("select  top 1 id,name,password,voicequery,question,answer,realname,sex,birthday,countries,certificate,number,telephone,fixedx,email,address,postcode,passengers from UserInfo ");
			strSql.Append(" where id=@id");
			SqlParameter[] parameters = {
					new SqlParameter("@id", SqlDbType.Int,4)
			};
			parameters[0].Value = id;

            MODEL.UserInfo model = new MODEL.UserInfo();
			DataSet ds=DbHelperSQL.Query(strSql.ToString(),parameters);
			if(ds.Tables[0].Rows.Count>0)
			{
				return DataRowToModel(ds.Tables[0].Rows[0]);
			}
			else
			{
				return null;
			}
		}


		/// <summary>
		/// 得到一个对象实体
		/// </summary>
          public MODEL.UserInfo DataRowToModel(DataRow row)
		{
            MODEL.UserInfo model = new MODEL.UserInfo();
			if (row != null)
			{
				if(row["id"]!=null && row["id"].ToString()!="")
				{
					model.id=int.Parse(row["id"].ToString());
				}
				if(row["name"]!=null)
				{
					model.name=row["name"].ToString();
				}
				if(row["password"]!=null)
				{
					model.password=row["password"].ToString();
				}
				if(row["voicequery"]!=null)
				{
					model.voicequery=row["voicequery"].ToString();
				}
				if(row["question"]!=null)
				{
					model.question=row["question"].ToString();
				}
				if(row["answer"]!=null)
				{
					model.answer=row["answer"].ToString();
				}
				if(row["realname"]!=null)
				{
					model.realname=row["realname"].ToString();
				}
				if(row["sex"]!=null)
				{
					model.sex=row["sex"].ToString();
				}
				if(row["birthday"]!=null)
				{
					model.birthday=row["birthday"].ToString();
				}
				if(row["countries"]!=null)
				{
					model.countries=row["countries"].ToString();
				}
				if(row["certificate"]!=null)
				{
					model.certificate=row["certificate"].ToString();
				}
				if(row["number"]!=null)
				{
					model.number=row["number"].ToString();
				}
				if(row["telephone"]!=null)
				{
					model.telephone=row["telephone"].ToString();
				}
				if(row["fixedx"]!=null)
				{
					model.fixedx=row["fixedx"].ToString();
				}
				if(row["email"]!=null)
				{
					model.email=row["email"].ToString();
				}
				if(row["address"]!=null)
				{
					model.address=row["address"].ToString();
				}
				if(row["postcode"]!=null)
				{
					model.postcode=row["postcode"].ToString();
				}
				if(row["passengers"]!=null)
				{
					model.passengers=row["passengers"].ToString();
				}
			}
			return model;
		}

		/// <summary>
		/// 获得数据列表
		/// </summary>
		public DataSet GetList(string strWhere)
		{
			StringBuilder strSql=new StringBuilder();
			strSql.Append("select id,name,password,voicequery,question,answer,realname,sex,birthday,countries,certificate,number,telephone,fixedx,email,address,postcode,passengers ");
			strSql.Append(" FROM UserInfo ");
			if(strWhere.Trim()!="")
			{
				strSql.Append(" where "+strWhere);
			}
			return DbHelperSQL.Query(strSql.ToString());
		}

		/// <summary>
		/// 获得前几行数据
		/// </summary>
		public DataSet GetList(int Top,string strWhere,string filedOrder)
		{
			StringBuilder strSql=new StringBuilder();
			strSql.Append("select ");
			if(Top>0)
			{
				strSql.Append(" top "+Top.ToString());
			}
			strSql.Append(" id,name,password,voicequery,question,answer,realname,sex,birthday,countries,certificate,number,telephone,fixedx,email,address,postcode,passengers ");
			strSql.Append(" FROM UserInfo ");
			if(strWhere.Trim()!="")
			{
				strSql.Append(" where "+strWhere);
			}
			strSql.Append(" order by " + filedOrder);
			return DbHelperSQL.Query(strSql.ToString());
		}

		/// <summary>
		/// 获取记录总数
		/// </summary>
		public int GetRecordCount(string strWhere)
		{
			StringBuilder strSql=new StringBuilder();
			strSql.Append("select count(1) FROM UserInfo ");
			if(strWhere.Trim()!="")
			{
				strSql.Append(" where "+strWhere);
			}
			object obj = DbHelperSQL.GetSingle(strSql.ToString());
			if (obj == null)
			{
				return 0;
			}
			else
			{
				return Convert.ToInt32(obj);
			}
		}
		/// <summary>
		/// 分页获取数据列表
		/// </summary>
		public DataSet GetListByPage(string strWhere, string orderby, int startIndex, int endIndex)
		{
			StringBuilder strSql=new StringBuilder();
			strSql.Append("SELECT * FROM ( ");
			strSql.Append(" SELECT ROW_NUMBER() OVER (");
			if (!string.IsNullOrEmpty(orderby.Trim()))
			{
				strSql.Append("order by T." + orderby );
			}
			else
			{
				strSql.Append("order by T.id desc");
			}
			strSql.Append(")AS Row, T.*  from UserInfo T ");
			if (!string.IsNullOrEmpty(strWhere.Trim()))
			{
				strSql.Append(" WHERE " + strWhere);
			}
			strSql.Append(" ) TT");
			strSql.AppendFormat(" WHERE TT.Row between {0} and {1}", startIndex, endIndex);
			return DbHelperSQL.Query(strSql.ToString());
		}

		/*
		/// <summary>
		/// 分页获取数据列表
		/// </summary>
		public DataSet GetList(int PageSize,int PageIndex,string strWhere)
		{
			SqlParameter[] parameters = {
					new SqlParameter("@tblName", SqlDbType.VarChar, 255),
					new SqlParameter("@fldName", SqlDbType.VarChar, 255),
					new SqlParameter("@PageSize", SqlDbType.Int),
					new SqlParameter("@PageIndex", SqlDbType.Int),
					new SqlParameter("@IsReCount", SqlDbType.Bit),
					new SqlParameter("@OrderType", SqlDbType.Bit),
					new SqlParameter("@strWhere", SqlDbType.VarChar,1000),
					};
			parameters[0].Value = "UserInfo";
			parameters[1].Value = "id";
			parameters[2].Value = PageSize;
			parameters[3].Value = PageIndex;
			parameters[4].Value = 0;
			parameters[5].Value = 0;
			parameters[6].Value = strWhere;	
			return DbHelperSQL.RunProcedure("UP_GetRecordByPage",parameters,"ds");
		}*/

		#endregion  BasicMethod
		#region  ExtensionMethod

		#endregion  ExtensionMethod
    }
}
