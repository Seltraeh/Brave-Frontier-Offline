.class public Lcom/vungle/warren/persistence/DatabaseHelper;
.super Landroid/database/sqlite/SQLiteOpenHelper;
.source "DatabaseHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vungle/warren/persistence/DatabaseHelper$DatabaseFactory;,
        Lcom/vungle/warren/persistence/DatabaseHelper$DBException;
    }
.end annotation


# static fields
.field public static final DB_NAME:Ljava/lang/String; = "vungle_db"


# instance fields
.field private final databaseFactory:Lcom/vungle/warren/persistence/DatabaseHelper$DatabaseFactory;


# direct methods
.method public constructor <init>(Landroid/content/Context;ILcom/vungle/warren/persistence/DatabaseHelper$DatabaseFactory;)V
    .locals 2

    .line 24
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    const-string v0, "vungle_db"

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1, p2}, Landroid/database/sqlite/SQLiteOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    .line 25
    iput-object p3, p0, Lcom/vungle/warren/persistence/DatabaseHelper;->databaseFactory:Lcom/vungle/warren/persistence/DatabaseHelper$DatabaseFactory;

    return-void
.end method

.method private declared-synchronized loadWritableDB()Landroid/database/sqlite/SQLiteDatabase;
    .locals 1

    monitor-enter p0

    .line 106
    :try_start_0
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method


# virtual methods
.method public delete(Lcom/vungle/warren/persistence/Query;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/vungle/warren/persistence/DatabaseHelper$DBException;
        }
    .end annotation

    .line 81
    :try_start_0
    invoke-direct {p0}, Lcom/vungle/warren/persistence/DatabaseHelper;->loadWritableDB()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    iget-object v1, p1, Lcom/vungle/warren/persistence/Query;->tableName:Ljava/lang/String;

    iget-object v2, p1, Lcom/vungle/warren/persistence/Query;->selection:Ljava/lang/String;

    iget-object p1, p1, Lcom/vungle/warren/persistence/Query;->args:[Ljava/lang/String;

    invoke-virtual {v0, v1, v2, p1}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 83
    new-instance v0, Lcom/vungle/warren/persistence/DatabaseHelper$DBException;

    invoke-virtual {p1}, Landroid/database/SQLException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/vungle/warren/persistence/DatabaseHelper$DBException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public declared-synchronized dropDb()V
    .locals 2

    monitor-enter p0

    .line 96
    :try_start_0
    iget-object v0, p0, Lcom/vungle/warren/persistence/DatabaseHelper;->databaseFactory:Lcom/vungle/warren/persistence/DatabaseHelper$DatabaseFactory;

    invoke-direct {p0}, Lcom/vungle/warren/persistence/DatabaseHelper;->loadWritableDB()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/vungle/warren/persistence/DatabaseHelper$DatabaseFactory;->deleteData(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 97
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteOpenHelper;->close()V

    .line 98
    invoke-direct {p0}, Lcom/vungle/warren/persistence/DatabaseHelper;->loadWritableDB()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/vungle/warren/persistence/DatabaseHelper;->onCreate(Landroid/database/sqlite/SQLiteDatabase;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 99
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public execSQL(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/vungle/warren/persistence/DatabaseHelper$DBException;
        }
    .end annotation

    .line 89
    :try_start_0
    invoke-direct {p0}, Lcom/vungle/warren/persistence/DatabaseHelper;->loadWritableDB()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 91
    new-instance v0, Lcom/vungle/warren/persistence/DatabaseHelper$DBException;

    invoke-virtual {p1}, Landroid/database/SQLException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/vungle/warren/persistence/DatabaseHelper$DBException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public init()V
    .locals 0

    .line 102
    invoke-direct {p0}, Lcom/vungle/warren/persistence/DatabaseHelper;->loadWritableDB()Landroid/database/sqlite/SQLiteDatabase;

    return-void
.end method

.method public insertWithConflict(Ljava/lang/String;Landroid/content/ContentValues;I)J
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/vungle/warren/persistence/DatabaseHelper$DBException;
        }
    .end annotation

    .line 47
    :try_start_0
    invoke-direct {p0}, Lcom/vungle/warren/persistence/DatabaseHelper;->loadWritableDB()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1, p2, p3}, Landroid/database/sqlite/SQLiteDatabase;->insertWithOnConflict(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;I)J

    move-result-wide p1
    :try_end_0
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    return-wide p1

    :catch_0
    move-exception p1

    .line 49
    new-instance p2, Lcom/vungle/warren/persistence/DatabaseHelper$DBException;

    invoke-virtual {p1}, Landroid/database/SQLException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Lcom/vungle/warren/persistence/DatabaseHelper$DBException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method public declared-synchronized onCreate(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1

    monitor-enter p0

    .line 30
    :try_start_0
    iget-object v0, p0, Lcom/vungle/warren/persistence/DatabaseHelper;->databaseFactory:Lcom/vungle/warren/persistence/DatabaseHelper$DatabaseFactory;

    invoke-interface {v0, p1}, Lcom/vungle/warren/persistence/DatabaseHelper$DatabaseFactory;->create(Landroid/database/sqlite/SQLiteDatabase;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 31
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public onDowngrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 1

    .line 41
    iget-object v0, p0, Lcom/vungle/warren/persistence/DatabaseHelper;->databaseFactory:Lcom/vungle/warren/persistence/DatabaseHelper$DatabaseFactory;

    invoke-interface {v0, p1, p2, p3}, Lcom/vungle/warren/persistence/DatabaseHelper$DatabaseFactory;->onDowngrade(Landroid/database/sqlite/SQLiteDatabase;II)V

    return-void
.end method

.method public onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 1

    .line 35
    iget-object v0, p0, Lcom/vungle/warren/persistence/DatabaseHelper;->databaseFactory:Lcom/vungle/warren/persistence/DatabaseHelper$DatabaseFactory;

    invoke-interface {v0, p1, p2, p3}, Lcom/vungle/warren/persistence/DatabaseHelper$DatabaseFactory;->onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V

    return-void
.end method

.method public query(Lcom/vungle/warren/persistence/Query;)Landroid/database/Cursor;
    .locals 9

    .line 62
    invoke-direct {p0}, Lcom/vungle/warren/persistence/DatabaseHelper;->loadWritableDB()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    iget-object v1, p1, Lcom/vungle/warren/persistence/Query;->tableName:Ljava/lang/String;

    iget-object v2, p1, Lcom/vungle/warren/persistence/Query;->columns:[Ljava/lang/String;

    iget-object v3, p1, Lcom/vungle/warren/persistence/Query;->selection:Ljava/lang/String;

    iget-object v4, p1, Lcom/vungle/warren/persistence/Query;->args:[Ljava/lang/String;

    iget-object v5, p1, Lcom/vungle/warren/persistence/Query;->groupBy:Ljava/lang/String;

    iget-object v6, p1, Lcom/vungle/warren/persistence/Query;->having:Ljava/lang/String;

    iget-object v7, p1, Lcom/vungle/warren/persistence/Query;->orderBy:Ljava/lang/String;

    iget-object v8, p1, Lcom/vungle/warren/persistence/Query;->limit:Ljava/lang/String;

    invoke-virtual/range {v0 .. v8}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p1

    return-object p1
.end method

.method public queryRaw(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;
    .locals 1

    .line 75
    invoke-direct {p0}, Lcom/vungle/warren/persistence/DatabaseHelper;->loadWritableDB()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p1

    return-object p1
.end method

.method public update(Lcom/vungle/warren/persistence/Query;Landroid/content/ContentValues;)J
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/vungle/warren/persistence/DatabaseHelper$DBException;
        }
    .end annotation

    .line 55
    :try_start_0
    invoke-direct {p0}, Lcom/vungle/warren/persistence/DatabaseHelper;->loadWritableDB()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    iget-object v1, p1, Lcom/vungle/warren/persistence/Query;->tableName:Ljava/lang/String;

    iget-object v2, p1, Lcom/vungle/warren/persistence/Query;->selection:Ljava/lang/String;

    iget-object p1, p1, Lcom/vungle/warren/persistence/Query;->args:[Ljava/lang/String;

    invoke-virtual {v0, v1, p2, v2, p1}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result p1
    :try_end_0
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    int-to-long p1, p1

    return-wide p1

    :catch_0
    move-exception p1

    .line 57
    new-instance p2, Lcom/vungle/warren/persistence/DatabaseHelper$DBException;

    invoke-virtual {p1}, Landroid/database/SQLException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Lcom/vungle/warren/persistence/DatabaseHelper$DBException;-><init>(Ljava/lang/String;)V

    throw p2
.end method
