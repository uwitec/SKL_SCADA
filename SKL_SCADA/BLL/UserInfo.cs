using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Data;
using System.Data.SqlClient;
using MODEL;
using Common;

namespace BLL
{
	public partial class UserInfo
	{
        private readonly DAL.UserInfo DALUserInfo = new DAL.UserInfo();
		public UserInfo()
		{}
		#region  BasicMethod
		/// <summary>
		/// 是否存在该记录
		/// </summary>
		public bool Exists(int id)
		{
			return DALUserInfo.Exists(id);
		}

		/// <summary>
		/// 增加一条数据
		/// </summary>
        public int Add(MODEL.UserInfo model)
		{
			return DALUserInfo.Add(model);
		}

		/// <summary>
		/// 更新一条数据
		/// </summary>
        public bool Update(MODEL.UserInfo model)
		{
			return DALUserInfo.Update(model);
		}

		/// <summary>
		/// 删除一条数据
		/// </summary>
		public bool Delete(int id)
		{
			
			return DALUserInfo.Delete(id);
		}
		/// <summary>
		/// 删除一条数据
		/// </summary>
		public bool DeleteList(string idlist )
		{
			return DALUserInfo.DeleteList(idlist );
		}

		/// <summary>
		/// 得到一个对象实体
		/// </summary>
        public MODEL.UserInfo GetModel(int id)
		{
			
			return DALUserInfo.GetModel(id);
		}

		/// <summary>
		/// 得到一个对象实体，从缓存中
		/// </summary>
        public MODEL.UserInfo GetModelByCache(int id)
		{
			
			string CacheKey = "UserInfoModel-" + id;
			object objModel = Common.DataCache.GetCache(CacheKey);
			if (objModel == null)
			{
				try
				{
					objModel = DALUserInfo.GetModel(id);
					if (objModel != null)
					{
						int ModelCache = Common.ConfigHelper.GetConfigInt("ModelCache");
						Common.DataCache.SetCache(CacheKey, objModel, DateTime.Now.AddMinutes(ModelCache), TimeSpan.Zero);
					}
				}
				catch{}
			}
            return (MODEL.UserInfo)objModel;
		}

		/// <summary>
		/// 获得数据列表
		/// </summary>
		public DataSet GetList(string strWhere)
		{
			return DALUserInfo.GetList(strWhere);
		}
		/// <summary>
		/// 获得前几行数据
		/// </summary>
		public DataSet GetList(int Top,string strWhere,string filedOrder)
		{
			return DALUserInfo.GetList(Top,strWhere,filedOrder);
		}
		/// <summary>
		/// 获得数据列表
		/// </summary>
        public List<MODEL.UserInfo> GetModelList(string strWhere)
		{
			DataSet ds = DALUserInfo.GetList(strWhere);
			return DataTableToList(ds.Tables[0]);
		}
		/// <summary>
		/// 获得数据列表
		/// </summary>
        public List<MODEL.UserInfo> DataTableToList(DataTable dt)
		{
            List<MODEL.UserInfo> modelList = new List<MODEL.UserInfo>();
			int rowsCount = dt.Rows.Count;
			if (rowsCount > 0)
			{
                MODEL.UserInfo model;
				for (int n = 0; n < rowsCount; n++)
				{
					model = DALUserInfo.DataRowToModel(dt.Rows[n]);
					if (model != null)
					{
						modelList.Add(model);
					}
				}
			}
			return modelList;
		}

		/// <summary>
		/// 获得数据列表
		/// </summary>
		public DataSet GetAllList()
		{
			return GetList("");
		}

		/// <summary>
		/// 分页获取数据列表
		/// </summary>
		public int GetRecordCount(string strWhere)
		{
			return DALUserInfo.GetRecordCount(strWhere);
		}
		/// <summary>
		/// 分页获取数据列表
		/// </summary>
		public DataSet GetListByPage(string strWhere, string orderby, int startIndex, int endIndex)
		{
			return DALUserInfo.GetListByPage( strWhere,  orderby,  startIndex,  endIndex);
		}
		/// <summary>
		/// 分页获取数据列表
		/// </summary>
		//public DataSet GetList(int PageSize,int PageIndex,string strWhere)
		//{
			//return DALUserInfo.GetList(PageSize,PageIndex,strWhere);
		//}

		#endregion  BasicMethod
		#region  ExtensionMethod

		#endregion  ExtensionMethod
    }
}
