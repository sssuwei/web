var ioc = {
    dataSource: {
        type: "com.mchange.v2.c3p0.ComboPooledDataSource",
        fields: {
			driverClass: 'com.mysql.jdbc.Driver',
			jdbcUrl: 'jdbc:mysql://localhost:3306/robot_control?useUnicode=true&characterEncoding=utf8&serverTimezone=GMT&useSSL=false',
            user: 'root',
            password: 'hugh1982.'
        }
    },
	
	dao : {
		type : 'org.nutz.dao.impl.NutDao',
		args : [{refer:'dataSource'}]
	}
};