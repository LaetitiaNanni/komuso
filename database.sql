SQLite format 3   @        !                                                             -�   �    ����                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                             
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                    ? ���`2����`>���g?                                                                                                                                                                                                                                                                                   & 1)Can delete sessiondelete_session& 1)Can change sessionchange_session  +#Can add sessionadd_session/ ;1Can delete content typedelete_contenttype/ ;1Can change content typechange_contenttype) 5+Can add content typeadd_contenttype  +#Can delete userdelete_user  +#Can change userchange_user
 %Can add useradd_user"	 -%Can delete groupdelete_group" -%Can change groupchange_group 'Can add groupadd_group, 7/Can delete permissiondelete_permission, 7/Can change permissionchange_permission& 1)Can add permissionadd_permission( 5	+Can delete log entrydelete_logentry( 5	+Can change log entrychange_logentry" /	%Can add log entryadd_logentry
   � ������p]J;)�����                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                       )delete_session)change_session#add_session1delete_contenttype1change_contenttype+add_contenttype#delete_user#change_useradd_user
%delete_group	%change_groupadd_group/delete_permission/change_permission)add_permission	+delete_logentry	+change_logentry	%	add_logentry                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                              
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                  "  "���                  �k--�	tabledjango_admin_logdjango_admin_logCREATE TABLE "django_admin_log" (
    "id" integer NOT NULL PRIMARY KEY,
    "action_time" datetime NOT NULL,
    "user_id" integer NOT NULL,
    "content_type_id" integer,
    "object_id" text,
    "object_repr" varchar(200) NOT NULL,
    "action_flag" smallint unsigned NOT NULL,
    "change_message" text NOT NULL
)�++�Stableauth_permissionauth_permissionCREATE TABLE "auth_permission" (
    "id" integer NOT NULL PRIMARY KEY,
    "name" varchar(50) NOT NULL,
    "content_type_id" integer NOT NULL,
    "codename" varchar(100) NOT NULL,
    UNIQUE ("content_type_id", "codename")
)=Q+ indexsqlite_autoindex_auth_permission_1auth_permission�99�Utableauth_group_permissionsauth_group_permissionsCREATE TABLE "auth_group_permissions" (
    "id" integer NOT NULL PRIMARY KEY,
    "group_id" integer NOT NULL,
    "permission_id" integer NOT NULL REFERENCES "auth_permission" ("id"),
    UNIQUE ("group_id", "permission_id")
)    �  � �c���                                                                                                                   K_9 indexsqlite_autoindex_auth_group_permissions_1auth_group_permissions�!!�ctableauth_groupauth_group	CREATE TABLE "auth_group" (
    "id" integer NOT NULL PRIMARY KEY,
    "name" varchar(80) NOT NULL UNIQUE
)3G! indexsqlite_autoindex_auth_group_1auth_group
�z--�'tableauth_user_groupsauth_user_groupsCREATE TABLE "auth_user_groups" (
    "id" integer NOT NULL PRIMARY KEY,
    "user_id" integer NOT NULL,
    "group_id" integer NOT NULL REFERENCES "auth_group" ("id"),
    UNIQUE ("user_id", "group_id")
)?	S- indexsqlite_autoindex_auth_user_groups_1auth_user_groups�'
AA�Ytableauth_user_user_permissionsauth_user_user_permissionsCREATE TABLE "auth_user_user_permissions" (
    "id" integer NOT NULL PRIMARY KEY,
    "user_id" integer NOT NULL,
    "permission_id" integer NOT NULL REFERENCES "auth_permission" ("id"),
    UNIQUE ("user_id", "permission_id")
)                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                              
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                            
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                            
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                            
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                  S  S �u��                                                                 SgA indexsqlite_autoindex_auth_user_user_permissions_1auth_user_user_permissions�J�ctableauth_userauth_userCREATE TABLE "auth_user" (
    "id" integer NOT NULL PRIMARY KEY,
    "password" varchar(128) NOT NULL,
    "last_login" datetime NOT NULL,
    "is_superuser" bool NOT NULL,
    "username" varchar(30) NOT NULL UNIQUE,
    "first_name" varchar(30) NOT NULL,
    "last_name" varchar(30) NOT NULL,
    "email" varchar(75) NOT NULL,
    "is_staff" bool NOT NULL,
    "is_active" bool NOT NULL,
    "date_joined" datetime NOT NULL
)1E indexsqlite_autoindex_auth_user_1auth_user�33�Ctabledjango_content_typedjango_content_typeCREATE TABLE "django_content_type" (
    "id" integer NOT NULL PRIMARY KEY,
    "name" varchar(100) NOT NULL,
    "app_label" varchar(100) NOT NULL,
    "model" varchar(100) NOT NULL,
    UNIQUE ("app_label", "model")
)EY3 indexsqlite_autoindex_django_content_type_1django_content_type   U ����rU                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                  sessionsessionssession( %%#content typecontenttypescontenttype userauthuser groupauthgroup !!permissionauthpermission log entryadminlogentry
   � ������                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                       sessionssession%#contenttypescontenttypeauthuserauthgroup!authpermission	adminlogentry   f f                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                            �M�=Acvm4dprychd6j4wips19fiudg93g8zndYmM1MWM1NmFmNjU4ZWYyNDBkOTdkZWFjZDQ4Mzg2MDUzNjJjOThmMzp7ImRqYW5nb19sYW5ndWFnZSI6ImphIn0=2014-01-29 18:15:52.301599
   � �                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                  #M	cvm4dprychd6j4wips19fiudg93g8znd    *  * �.�<�_                    �D))�Ctabledjango_sessiondjango_sessionCREATE TABLE "django_session" (
    "session_key" varchar(40) NOT NULL PRIMARY KEY,
    "session_data" text NOT NULL,
    "expire_date" datetime NOT NULL
);O) indexsqlite_autoindex_django_session_1django_session� ?-�!indexdjango_admin_log_6340c63cdjango_admin_logCREATE INDEX "django_admin_log_6340c63c" ON "django_admin_log" ("user_id")�?-�1indexdjango_admin_log_37ef4eb4django_admin_logCREATE INDEX "django_admin_log_37ef4eb4" ON "django_admin_log" ("content_type_id")�=+�-indexauth_permission_37ef4eb4auth_permissionCREATE INDEX "auth_permission_37ef4eb4" ON "auth_permission" ("content_type_id")�K9�;indexauth_group_permissions_5f412f9aauth_group_permissionsCREATE INDEX "auth_group_permissions_5f412f9a" ON "auth_group_permissions" ("group_id")�K9�Eindexauth_group_permissions_83d7f98bauth_group_permissionsCREATE INDEX "auth_group_permissions_83d7f98b" ON "auth_group_permissions" ("permission_id")
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                              
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                              
   � ������������������                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                            
					
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                              
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                              
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                  �&��                                                                                                                                                                                                                                                                             � ?-�!indexauth_user_groups_6340c63cauth_user_groupsCREATE INDEX "auth_user_groups_6340c63c" ON "auth_user_groups" ("user_id")�?-�#indexauth_user_groups_5f412f9aauth_user_groupsCREATE INDEX "auth_user_groups_5f412f9a" ON "auth_user_groups" ("group_id")�(SA�Iindexauth_user_user_permissions_6340c63cauth_user_user_permissionsCREATE INDEX "auth_user_user_permissions_6340c63c" ON "auth_user_user_permissions" ("user_id")�.SA�Uindexauth_user_user_permissions_83d7f98bauth_user_user_permissions CREATE INDEX "auth_user_user_permissions_83d7f98b" ON "auth_user_user_permissions" ("permission_id")|;)�!indexdjango_session_b7b81f0cdjango_session!CREATE INDEX "django_session_b7b81f0c" ON "django_session" ("expire_date")
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                              
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                              
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                              
   � �                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                        A	2014-01-29 18:15:52.301599