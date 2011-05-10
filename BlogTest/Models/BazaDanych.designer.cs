﻿#pragma warning disable 1591
//------------------------------------------------------------------------------
// <auto-generated>
//     This code was generated by a tool.
//     Runtime Version:4.0.30319.225
//
//     Changes to this file may cause incorrect behavior and will be lost if
//     the code is regenerated.
// </auto-generated>
//------------------------------------------------------------------------------

namespace BlogTest.Models
{
	using System.Data.Linq;
	using System.Data.Linq.Mapping;
	using System.Data;
	using System.Collections.Generic;
	using System.Reflection;
	using System.Linq;
	using System.Linq.Expressions;
	using System.ComponentModel;
	using System;
	
	
	[global::System.Data.Linq.Mapping.DatabaseAttribute(Name="ProjektHostingGrafiki")]
	public partial class BazaDanychDataContext : System.Data.Linq.DataContext
	{
		
		private static System.Data.Linq.Mapping.MappingSource mappingSource = new AttributeMappingSource();
		
    #region Extensibility Method Definitions
    partial void OnCreated();
    partial void InsertPost(Post instance);
    partial void UpdatePost(Post instance);
    partial void DeletePost(Post instance);
    #endregion
		
		public BazaDanychDataContext() : 
				base(global::System.Configuration.ConfigurationManager.ConnectionStrings["ProjektHostingGrafikiConnectionString"].ConnectionString, mappingSource)
		{
			OnCreated();
		}
		
		public BazaDanychDataContext(string connection) : 
				base(connection, mappingSource)
		{
			OnCreated();
		}
		
		public BazaDanychDataContext(System.Data.IDbConnection connection) : 
				base(connection, mappingSource)
		{
			OnCreated();
		}
		
		public BazaDanychDataContext(string connection, System.Data.Linq.Mapping.MappingSource mappingSource) : 
				base(connection, mappingSource)
		{
			OnCreated();
		}
		
		public BazaDanychDataContext(System.Data.IDbConnection connection, System.Data.Linq.Mapping.MappingSource mappingSource) : 
				base(connection, mappingSource)
		{
			OnCreated();
		}
		
		public System.Data.Linq.Table<Komentarze> Komentarzes
		{
			get
			{
				return this.GetTable<Komentarze>();
			}
		}
		
		public System.Data.Linq.Table<Ustawienia> Ustawienias
		{
			get
			{
				return this.GetTable<Ustawienia>();
			}
		}
		
		public System.Data.Linq.Table<Post> Posts
		{
			get
			{
				return this.GetTable<Post>();
			}
		}
		
		public System.Data.Linq.Table<Tagi> Tagis
		{
			get
			{
				return this.GetTable<Tagi>();
			}
		}
	}
	
	[global::System.Data.Linq.Mapping.TableAttribute(Name="dbo.Komentarze")]
	public partial class Komentarze
	{
		
		private int _id;
		
		private int _id_postu;
		
		private string _treść;
		
		private string _autor;
		
		private System.DateTime _data_dodania;
		
		private int _status;
		
		public Komentarze()
		{
		}
		
		[global::System.Data.Linq.Mapping.ColumnAttribute(Storage="_id", DbType="Int NOT NULL")]
		public int id
		{
			get
			{
				return this._id;
			}
			set
			{
				if ((this._id != value))
				{
					this._id = value;
				}
			}
		}
		
		[global::System.Data.Linq.Mapping.ColumnAttribute(Storage="_id_postu", DbType="Int NOT NULL")]
		public int id_postu
		{
			get
			{
				return this._id_postu;
			}
			set
			{
				if ((this._id_postu != value))
				{
					this._id_postu = value;
				}
			}
		}
		
		[global::System.Data.Linq.Mapping.ColumnAttribute(Storage="_treść", DbType="VarChar(512) NOT NULL", CanBeNull=false)]
		public string treść
		{
			get
			{
				return this._treść;
			}
			set
			{
				if ((this._treść != value))
				{
					this._treść = value;
				}
			}
		}
		
		[global::System.Data.Linq.Mapping.ColumnAttribute(Storage="_autor", DbType="VarChar(50) NOT NULL", CanBeNull=false)]
		public string autor
		{
			get
			{
				return this._autor;
			}
			set
			{
				if ((this._autor != value))
				{
					this._autor = value;
				}
			}
		}
		
		[global::System.Data.Linq.Mapping.ColumnAttribute(Storage="_data_dodania", DbType="DateTime NOT NULL")]
		public System.DateTime data_dodania
		{
			get
			{
				return this._data_dodania;
			}
			set
			{
				if ((this._data_dodania != value))
				{
					this._data_dodania = value;
				}
			}
		}
		
		[global::System.Data.Linq.Mapping.ColumnAttribute(Storage="_status", DbType="Int NOT NULL")]
		public int status
		{
			get
			{
				return this._status;
			}
			set
			{
				if ((this._status != value))
				{
					this._status = value;
				}
			}
		}
	}
	
	[global::System.Data.Linq.Mapping.TableAttribute(Name="dbo.Ustawienia")]
	public partial class Ustawienia
	{
		
		private int _grupa;
		
		private string _nazwa;
		
		private string _wartość;
		
		public Ustawienia()
		{
		}
		
		[global::System.Data.Linq.Mapping.ColumnAttribute(Storage="_grupa", DbType="Int NOT NULL")]
		public int grupa
		{
			get
			{
				return this._grupa;
			}
			set
			{
				if ((this._grupa != value))
				{
					this._grupa = value;
				}
			}
		}
		
		[global::System.Data.Linq.Mapping.ColumnAttribute(Storage="_nazwa", DbType="VarChar(50) NOT NULL", CanBeNull=false)]
		public string nazwa
		{
			get
			{
				return this._nazwa;
			}
			set
			{
				if ((this._nazwa != value))
				{
					this._nazwa = value;
				}
			}
		}
		
		[global::System.Data.Linq.Mapping.ColumnAttribute(Storage="_wartość", DbType="VarChar(10) NOT NULL", CanBeNull=false)]
		public string wartość
		{
			get
			{
				return this._wartość;
			}
			set
			{
				if ((this._wartość != value))
				{
					this._wartość = value;
				}
			}
		}
	}
	
	[global::System.Data.Linq.Mapping.TableAttribute(Name="dbo.Post")]
	public partial class Post : INotifyPropertyChanging, INotifyPropertyChanged
	{
		
		private static PropertyChangingEventArgs emptyChangingEventArgs = new PropertyChangingEventArgs(String.Empty);
		
		private int _id;
		
		private string _tytuł;
		
		private string _treść;
		
		private int _status;
		
		private System.DateTime _data_dodania;
		
		private System.Nullable<System.DateTime> _data_modyfikacji;
		
    #region Extensibility Method Definitions
    partial void OnLoaded();
    partial void OnValidate(System.Data.Linq.ChangeAction action);
    partial void OnCreated();
    partial void OnidChanging(int value);
    partial void OnidChanged();
    partial void OntytułChanging(string value);
    partial void OntytułChanged();
    partial void OntreśćChanging(string value);
    partial void OntreśćChanged();
    partial void OnstatusChanging(int value);
    partial void OnstatusChanged();
    partial void Ondata_dodaniaChanging(System.DateTime value);
    partial void Ondata_dodaniaChanged();
    partial void Ondata_modyfikacjiChanging(System.Nullable<System.DateTime> value);
    partial void Ondata_modyfikacjiChanged();
    #endregion
		
		public Post()
		{
			OnCreated();
		}
		
		[global::System.Data.Linq.Mapping.ColumnAttribute(Storage="_id", AutoSync=AutoSync.OnInsert, DbType="Int NOT NULL IDENTITY", IsPrimaryKey=true, IsDbGenerated=true)]
		public int id
		{
			get
			{
				return this._id;
			}
			set
			{
				if ((this._id != value))
				{
					this.OnidChanging(value);
					this.SendPropertyChanging();
					this._id = value;
					this.SendPropertyChanged("id");
					this.OnidChanged();
				}
			}
		}
		
		[global::System.Data.Linq.Mapping.ColumnAttribute(Storage="_tytuł", DbType="VarChar(50) NOT NULL", CanBeNull=false)]
		public string tytuł
		{
			get
			{
				return this._tytuł;
			}
			set
			{
				if ((this._tytuł != value))
				{
					this.OntytułChanging(value);
					this.SendPropertyChanging();
					this._tytuł = value;
					this.SendPropertyChanged("tytuł");
					this.OntytułChanged();
				}
			}
		}
		
		[global::System.Data.Linq.Mapping.ColumnAttribute(Storage="_treść", DbType="Text NOT NULL", CanBeNull=false, UpdateCheck=UpdateCheck.Never)]
		public string treść
		{
			get
			{
				return this._treść;
			}
			set
			{
				if ((this._treść != value))
				{
					this.OntreśćChanging(value);
					this.SendPropertyChanging();
					this._treść = value;
					this.SendPropertyChanged("treść");
					this.OntreśćChanged();
				}
			}
		}
		
		[global::System.Data.Linq.Mapping.ColumnAttribute(Storage="_status", DbType="Int NOT NULL")]
		public int status
		{
			get
			{
				return this._status;
			}
			set
			{
				if ((this._status != value))
				{
					this.OnstatusChanging(value);
					this.SendPropertyChanging();
					this._status = value;
					this.SendPropertyChanged("status");
					this.OnstatusChanged();
				}
			}
		}
		
		[global::System.Data.Linq.Mapping.ColumnAttribute(Storage="_data_dodania", DbType="DateTime NOT NULL")]
		public System.DateTime data_dodania
		{
			get
			{
				return this._data_dodania;
			}
			set
			{
				if ((this._data_dodania != value))
				{
					this.Ondata_dodaniaChanging(value);
					this.SendPropertyChanging();
					this._data_dodania = value;
					this.SendPropertyChanged("data_dodania");
					this.Ondata_dodaniaChanged();
				}
			}
		}
		
		[global::System.Data.Linq.Mapping.ColumnAttribute(Storage="_data_modyfikacji", DbType="DateTime")]
		public System.Nullable<System.DateTime> data_modyfikacji
		{
			get
			{
				return this._data_modyfikacji;
			}
			set
			{
				if ((this._data_modyfikacji != value))
				{
					this.Ondata_modyfikacjiChanging(value);
					this.SendPropertyChanging();
					this._data_modyfikacji = value;
					this.SendPropertyChanged("data_modyfikacji");
					this.Ondata_modyfikacjiChanged();
				}
			}
		}
		
		public event PropertyChangingEventHandler PropertyChanging;
		
		public event PropertyChangedEventHandler PropertyChanged;
		
		protected virtual void SendPropertyChanging()
		{
			if ((this.PropertyChanging != null))
			{
				this.PropertyChanging(this, emptyChangingEventArgs);
			}
		}
		
		protected virtual void SendPropertyChanged(String propertyName)
		{
			if ((this.PropertyChanged != null))
			{
				this.PropertyChanged(this, new PropertyChangedEventArgs(propertyName));
			}
		}
	}
	
	[global::System.Data.Linq.Mapping.TableAttribute(Name="dbo.Tagi")]
	public partial class Tagi
	{
		
		private int _id_postu;
		
		private string _keywords;
		
		private string _desc;
		
		public Tagi()
		{
		}
		
		[global::System.Data.Linq.Mapping.ColumnAttribute(Storage="_id_postu", DbType="Int NOT NULL")]
		public int id_postu
		{
			get
			{
				return this._id_postu;
			}
			set
			{
				if ((this._id_postu != value))
				{
					this._id_postu = value;
				}
			}
		}
		
		[global::System.Data.Linq.Mapping.ColumnAttribute(Storage="_keywords", DbType="VarChar(200) NOT NULL", CanBeNull=false)]
		public string keywords
		{
			get
			{
				return this._keywords;
			}
			set
			{
				if ((this._keywords != value))
				{
					this._keywords = value;
				}
			}
		}
		
		[global::System.Data.Linq.Mapping.ColumnAttribute(Name="[desc]", Storage="_desc", DbType="VarChar(200) NOT NULL", CanBeNull=false)]
		public string desc
		{
			get
			{
				return this._desc;
			}
			set
			{
				if ((this._desc != value))
				{
					this._desc = value;
				}
			}
		}
	}
}
#pragma warning restore 1591
