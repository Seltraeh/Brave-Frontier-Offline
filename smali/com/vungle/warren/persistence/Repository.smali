.class public Lcom/vungle/warren/persistence/Repository;
.super Ljava/lang/Object;
.source "Repository.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vungle/warren/persistence/Repository$VungleDatabaseCreator;,
        Lcom/vungle/warren/persistence/Repository$SaveCallback;,
        Lcom/vungle/warren/persistence/Repository$LoadCallback;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "Repository"

.field public static VERSION:I = 0x5


# instance fields
.field private adapters:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Class;",
            "Lcom/vungle/warren/persistence/DBAdapter;",
            ">;"
        }
    .end annotation
.end field

.field private final appCtx:Landroid/content/Context;

.field private final backgroundExecutor:Ljava/util/concurrent/ExecutorService;

.field protected dbHelper:Lcom/vungle/warren/persistence/DatabaseHelper;

.field private final designer:Lcom/vungle/warren/persistence/Designer;

.field private final uiExecutor:Ljava/util/concurrent/ExecutorService;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/vungle/warren/persistence/Designer;Ljava/util/concurrent/ExecutorService;Ljava/util/concurrent/ExecutorService;)V
    .locals 6

    .line 70
    sget v5, Lcom/vungle/warren/persistence/Repository;->VERSION:I

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-direct/range {v0 .. v5}, Lcom/vungle/warren/persistence/Repository;-><init>(Landroid/content/Context;Lcom/vungle/warren/persistence/Designer;Ljava/util/concurrent/ExecutorService;Ljava/util/concurrent/ExecutorService;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/vungle/warren/persistence/Designer;Ljava/util/concurrent/ExecutorService;Ljava/util/concurrent/ExecutorService;I)V
    .locals 1

    .line 73
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 67
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/vungle/warren/persistence/Repository;->adapters:Ljava/util/Map;

    .line 74
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/vungle/warren/persistence/Repository;->appCtx:Landroid/content/Context;

    .line 75
    iput-object p3, p0, Lcom/vungle/warren/persistence/Repository;->backgroundExecutor:Ljava/util/concurrent/ExecutorService;

    .line 76
    iput-object p4, p0, Lcom/vungle/warren/persistence/Repository;->uiExecutor:Ljava/util/concurrent/ExecutorService;

    .line 78
    new-instance p3, Lcom/vungle/warren/persistence/DatabaseHelper;

    new-instance p4, Lcom/vungle/warren/persistence/Repository$VungleDatabaseCreator;

    iget-object v0, p0, Lcom/vungle/warren/persistence/Repository;->appCtx:Landroid/content/Context;

    invoke-direct {p4, v0}, Lcom/vungle/warren/persistence/Repository$VungleDatabaseCreator;-><init>(Landroid/content/Context;)V

    invoke-direct {p3, p1, p5, p4}, Lcom/vungle/warren/persistence/DatabaseHelper;-><init>(Landroid/content/Context;ILcom/vungle/warren/persistence/DatabaseHelper$DatabaseFactory;)V

    iput-object p3, p0, Lcom/vungle/warren/persistence/Repository;->dbHelper:Lcom/vungle/warren/persistence/DatabaseHelper;

    .line 79
    iput-object p2, p0, Lcom/vungle/warren/persistence/Repository;->designer:Lcom/vungle/warren/persistence/Designer;

    .line 81
    iget-object p1, p0, Lcom/vungle/warren/persistence/Repository;->adapters:Ljava/util/Map;

    const-class p2, Lcom/vungle/warren/model/Placement;

    new-instance p3, Lcom/vungle/warren/model/PlacementDBAdapter;

    invoke-direct {p3}, Lcom/vungle/warren/model/PlacementDBAdapter;-><init>()V

    invoke-interface {p1, p2, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 82
    iget-object p1, p0, Lcom/vungle/warren/persistence/Repository;->adapters:Ljava/util/Map;

    const-class p2, Lcom/vungle/warren/model/Cookie;

    new-instance p3, Lcom/vungle/warren/model/CookieDBAdapter;

    invoke-direct {p3}, Lcom/vungle/warren/model/CookieDBAdapter;-><init>()V

    invoke-interface {p1, p2, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 83
    iget-object p1, p0, Lcom/vungle/warren/persistence/Repository;->adapters:Ljava/util/Map;

    const-class p2, Lcom/vungle/warren/model/Report;

    new-instance p3, Lcom/vungle/warren/model/ReportDBAdapter;

    invoke-direct {p3}, Lcom/vungle/warren/model/ReportDBAdapter;-><init>()V

    invoke-interface {p1, p2, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 84
    iget-object p1, p0, Lcom/vungle/warren/persistence/Repository;->adapters:Ljava/util/Map;

    const-class p2, Lcom/vungle/warren/model/Advertisement;

    new-instance p3, Lcom/vungle/warren/model/AdvertisementDBAdapter;

    invoke-direct {p3}, Lcom/vungle/warren/model/AdvertisementDBAdapter;-><init>()V

    invoke-interface {p1, p2, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 85
    iget-object p1, p0, Lcom/vungle/warren/persistence/Repository;->adapters:Ljava/util/Map;

    const-class p2, Lcom/vungle/warren/model/AdAsset;

    new-instance p3, Lcom/vungle/warren/model/AdAssetDBAdapter;

    invoke-direct {p3}, Lcom/vungle/warren/model/AdAssetDBAdapter;-><init>()V

    invoke-interface {p1, p2, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 86
    iget-object p1, p0, Lcom/vungle/warren/persistence/Repository;->adapters:Ljava/util/Map;

    const-class p2, Lcom/vungle/warren/model/VisionData;

    new-instance p3, Lcom/vungle/warren/model/VisionDataDBAdapter;

    invoke-direct {p3}, Lcom/vungle/warren/model/VisionDataDBAdapter;-><init>()V

    invoke-interface {p1, p2, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method static synthetic access$000(Lcom/vungle/warren/persistence/Repository;Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;
    .locals 0

    .line 55
    invoke-direct {p0, p1, p2}, Lcom/vungle/warren/persistence/Repository;->loadModel(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$100(Lcom/vungle/warren/persistence/Repository;)Ljava/util/concurrent/ExecutorService;
    .locals 0

    .line 55
    iget-object p0, p0, Lcom/vungle/warren/persistence/Repository;->uiExecutor:Ljava/util/concurrent/ExecutorService;

    return-object p0
.end method

.method static synthetic access$1000(Lcom/vungle/warren/persistence/Repository;)Lcom/vungle/warren/persistence/Designer;
    .locals 0

    .line 55
    iget-object p0, p0, Lcom/vungle/warren/persistence/Repository;->designer:Lcom/vungle/warren/persistence/Designer;

    return-object p0
.end method

.method static synthetic access$1100(Lcom/vungle/warren/persistence/Repository;)Ljava/util/List;
    .locals 0

    .line 55
    invoke-direct {p0}, Lcom/vungle/warren/persistence/Repository;->loadValidPlacementIds()Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$1200(Lcom/vungle/warren/persistence/Repository;Ljava/lang/String;)Ljava/util/List;
    .locals 0

    .line 55
    invoke-direct {p0, p1}, Lcom/vungle/warren/persistence/Repository;->getAdsForPlacement(Ljava/lang/String;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$1300(Lcom/vungle/warren/persistence/Repository;Ljava/lang/Class;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/vungle/warren/persistence/DatabaseHelper$DBException;
        }
    .end annotation

    .line 55
    invoke-direct {p0, p1, p2}, Lcom/vungle/warren/persistence/Repository;->deleteModel(Ljava/lang/Class;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$200(Lcom/vungle/warren/persistence/Repository;Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/vungle/warren/persistence/DatabaseHelper$DBException;
        }
    .end annotation

    .line 55
    invoke-direct {p0, p1}, Lcom/vungle/warren/persistence/Repository;->saveModel(Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic access$300()Ljava/lang/String;
    .locals 1

    .line 55
    sget-object v0, Lcom/vungle/warren/persistence/Repository;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$400(Lcom/vungle/warren/persistence/Repository;)Ljava/util/Map;
    .locals 0

    .line 55
    iget-object p0, p0, Lcom/vungle/warren/persistence/Repository;->adapters:Ljava/util/Map;

    return-object p0
.end method

.method static synthetic access$500(Lcom/vungle/warren/persistence/Repository;Ljava/lang/Class;)Ljava/util/List;
    .locals 0

    .line 55
    invoke-direct {p0, p1}, Lcom/vungle/warren/persistence/Repository;->loadAllModels(Ljava/lang/Class;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$600(Lcom/vungle/warren/persistence/Repository;Ljava/lang/Class;Landroid/database/Cursor;)Ljava/util/List;
    .locals 0

    .line 55
    invoke-direct {p0, p1, p2}, Lcom/vungle/warren/persistence/Repository;->extractModels(Ljava/lang/Class;Landroid/database/Cursor;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$700(Lcom/vungle/warren/persistence/Repository;Ljava/lang/String;)Ljava/util/List;
    .locals 0

    .line 55
    invoke-direct {p0, p1}, Lcom/vungle/warren/persistence/Repository;->loadAllAdAssetModels(Ljava/lang/String;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$800(Lcom/vungle/warren/persistence/Repository;Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/vungle/warren/persistence/DatabaseHelper$DBException;
        }
    .end annotation

    .line 55
    invoke-direct {p0, p1}, Lcom/vungle/warren/persistence/Repository;->deleteModel(Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic access$900(Lcom/vungle/warren/persistence/Repository;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/vungle/warren/persistence/DatabaseHelper$DBException;
        }
    .end annotation

    .line 55
    invoke-direct {p0, p1}, Lcom/vungle/warren/persistence/Repository;->deleteAdInternal(Ljava/lang/String;)V

    return-void
.end method

.method private deleteAdInternal(Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/vungle/warren/persistence/DatabaseHelper$DBException;
        }
    .end annotation

    .line 419
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 423
    :cond_0
    invoke-direct {p0, p1}, Lcom/vungle/warren/persistence/Repository;->deleteAssetForAdId(Ljava/lang/String;)V

    .line 424
    const-class v0, Lcom/vungle/warren/model/Advertisement;

    invoke-direct {p0, v0, p1}, Lcom/vungle/warren/persistence/Repository;->deleteModel(Ljava/lang/Class;Ljava/lang/String;)V

    .line 427
    :try_start_0
    iget-object v0, p0, Lcom/vungle/warren/persistence/Repository;->designer:Lcom/vungle/warren/persistence/Designer;

    invoke-interface {v0, p1}, Lcom/vungle/warren/persistence/Designer;->deleteAssets(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 429
    sget-object v0, Lcom/vungle/warren/persistence/Repository;->TAG:Ljava/lang/String;

    const-string v1, "IOException "

    invoke-static {v0, v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method

.method private deleteAssetForAdId(Ljava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/vungle/warren/persistence/DatabaseHelper$DBException;
        }
    .end annotation

    .line 395
    iget-object v0, p0, Lcom/vungle/warren/persistence/Repository;->adapters:Ljava/util/Map;

    const-class v1, Lcom/vungle/warren/model/AdAsset;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vungle/warren/persistence/DBAdapter;

    .line 396
    new-instance v1, Lcom/vungle/warren/persistence/Query;

    invoke-interface {v0}, Lcom/vungle/warren/persistence/DBAdapter;->tableName()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/vungle/warren/persistence/Query;-><init>(Ljava/lang/String;)V

    const-string v0, "ad_identifier=?"

    .line 397
    iput-object v0, v1, Lcom/vungle/warren/persistence/Query;->selection:Ljava/lang/String;

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v2, 0x0

    aput-object p1, v0, v2

    .line 398
    iput-object v0, v1, Lcom/vungle/warren/persistence/Query;->args:[Ljava/lang/String;

    .line 399
    iget-object p1, p0, Lcom/vungle/warren/persistence/Repository;->dbHelper:Lcom/vungle/warren/persistence/DatabaseHelper;

    invoke-virtual {p1, v1}, Lcom/vungle/warren/persistence/DatabaseHelper;->delete(Lcom/vungle/warren/persistence/Query;)V

    return-void
.end method

.method private deleteModel(Ljava/lang/Class;Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/vungle/warren/persistence/DatabaseHelper$DBException;
        }
    .end annotation

    .line 387
    iget-object v0, p0, Lcom/vungle/warren/persistence/Repository;->adapters:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/vungle/warren/persistence/DBAdapter;

    .line 388
    new-instance v0, Lcom/vungle/warren/persistence/Query;

    invoke-interface {p1}, Lcom/vungle/warren/persistence/DBAdapter;->tableName()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/vungle/warren/persistence/Query;-><init>(Ljava/lang/String;)V

    const-string p1, "item_id=?"

    .line 389
    iput-object p1, v0, Lcom/vungle/warren/persistence/Query;->selection:Ljava/lang/String;

    const/4 p1, 0x1

    new-array p1, p1, [Ljava/lang/String;

    const/4 v1, 0x0

    aput-object p2, p1, v1

    .line 390
    iput-object p1, v0, Lcom/vungle/warren/persistence/Query;->args:[Ljava/lang/String;

    .line 391
    iget-object p1, p0, Lcom/vungle/warren/persistence/Repository;->dbHelper:Lcom/vungle/warren/persistence/DatabaseHelper;

    invoke-virtual {p1, v0}, Lcom/vungle/warren/persistence/DatabaseHelper;->delete(Lcom/vungle/warren/persistence/Query;)V

    return-void
.end method

.method private deleteModel(Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/vungle/warren/persistence/DatabaseHelper$DBException;
        }
    .end annotation

    .line 403
    iget-object v0, p0, Lcom/vungle/warren/persistence/Repository;->adapters:Ljava/util/Map;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vungle/warren/persistence/DBAdapter;

    .line 404
    invoke-interface {v0, p1}, Lcom/vungle/warren/persistence/DBAdapter;->toContentValues(Ljava/lang/Object;)Landroid/content/ContentValues;

    move-result-object v0

    .line 405
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    const-string v1, "item_id"

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/vungle/warren/persistence/Repository;->deleteModel(Ljava/lang/Class;Ljava/lang/String;)V

    return-void
.end method

.method private extractModels(Ljava/lang/Class;Landroid/database/Cursor;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;",
            "Landroid/database/Cursor;",
            ")",
            "Ljava/util/List<",
            "TT;>;"
        }
    .end annotation

    if-eqz p2, :cond_2

    .line 118
    invoke-interface {p2}, Landroid/database/Cursor;->isClosed()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    .line 122
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 125
    :try_start_0
    iget-object v1, p0, Lcom/vungle/warren/persistence/Repository;->adapters:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/vungle/warren/persistence/DBAdapter;

    .line 127
    :goto_0
    invoke-interface {p2}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 128
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 129
    invoke-static {p2, v1}, Landroid/database/DatabaseUtils;->cursorRowToContentValues(Landroid/database/Cursor;Landroid/content/ContentValues;)V

    .line 130
    invoke-interface {p1, v1}, Lcom/vungle/warren/persistence/DBAdapter;->fromContentValues(Landroid/content/ContentValues;)Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 133
    :cond_1
    invoke-interface {p2}, Landroid/database/Cursor;->close()V

    return-object v0

    :catchall_0
    move-exception p1

    invoke-interface {p2}, Landroid/database/Cursor;->close()V

    throw p1

    .line 119
    :cond_2
    :goto_1
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method private getAdsForPlacement(Ljava/lang/String;)Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 599
    new-instance v0, Lcom/vungle/warren/persistence/Query;

    const-string v1, "advertisement"

    invoke-direct {v0, v1}, Lcom/vungle/warren/persistence/Query;-><init>(Ljava/lang/String;)V

    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "item_id"

    aput-object v4, v2, v3

    .line 600
    iput-object v2, v0, Lcom/vungle/warren/persistence/Query;->columns:[Ljava/lang/String;

    const-string v2, "placement_id=?"

    .line 601
    iput-object v2, v0, Lcom/vungle/warren/persistence/Query;->selection:Ljava/lang/String;

    new-array v1, v1, [Ljava/lang/String;

    aput-object p1, v1, v3

    .line 602
    iput-object v1, v0, Lcom/vungle/warren/persistence/Query;->args:[Ljava/lang/String;

    .line 604
    iget-object p1, p0, Lcom/vungle/warren/persistence/Repository;->dbHelper:Lcom/vungle/warren/persistence/DatabaseHelper;

    invoke-virtual {p1, v0}, Lcom/vungle/warren/persistence/DatabaseHelper;->query(Lcom/vungle/warren/persistence/Query;)Landroid/database/Cursor;

    move-result-object p1

    .line 606
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    :goto_0
    if-eqz p1, :cond_0

    .line 607
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 608
    invoke-interface {p1, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    if-eqz p1, :cond_1

    .line 612
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    :cond_1
    return-object v0
.end method

.method private loadAllAdAssetModels(Ljava/lang/String;)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lcom/vungle/warren/model/AdAsset;",
            ">;"
        }
    .end annotation

    .line 369
    new-instance v0, Lcom/vungle/warren/persistence/Query;

    const-string v1, "adAsset"

    invoke-direct {v0, v1}, Lcom/vungle/warren/persistence/Query;-><init>(Ljava/lang/String;)V

    const-string v1, "ad_identifier = ? "

    .line 370
    iput-object v1, v0, Lcom/vungle/warren/persistence/Query;->selection:Ljava/lang/String;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    .line 371
    iput-object v1, v0, Lcom/vungle/warren/persistence/Query;->args:[Ljava/lang/String;

    .line 372
    iget-object p1, p0, Lcom/vungle/warren/persistence/Repository;->dbHelper:Lcom/vungle/warren/persistence/DatabaseHelper;

    invoke-virtual {p1, v0}, Lcom/vungle/warren/persistence/DatabaseHelper;->query(Lcom/vungle/warren/persistence/Query;)Landroid/database/Cursor;

    move-result-object p1

    .line 373
    const-class v0, Lcom/vungle/warren/model/AdAsset;

    invoke-direct {p0, v0, p1}, Lcom/vungle/warren/persistence/Repository;->extractModels(Ljava/lang/Class;Landroid/database/Cursor;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method private loadAllModels(Ljava/lang/Class;)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;)",
            "Ljava/util/List<",
            "TT;>;"
        }
    .end annotation

    .line 108
    iget-object v0, p0, Lcom/vungle/warren/persistence/Repository;->adapters:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vungle/warren/persistence/DBAdapter;

    if-nez v0, :cond_0

    .line 109
    sget-object p1, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    return-object p1

    .line 111
    :cond_0
    iget-object v1, p0, Lcom/vungle/warren/persistence/Repository;->dbHelper:Lcom/vungle/warren/persistence/DatabaseHelper;

    new-instance v2, Lcom/vungle/warren/persistence/Query;

    invoke-interface {v0}, Lcom/vungle/warren/persistence/DBAdapter;->tableName()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Lcom/vungle/warren/persistence/Query;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Lcom/vungle/warren/persistence/DatabaseHelper;->query(Lcom/vungle/warren/persistence/Query;)Landroid/database/Cursor;

    move-result-object v0

    .line 113
    invoke-direct {p0, p1, v0}, Lcom/vungle/warren/persistence/Repository;->extractModels(Ljava/lang/Class;Landroid/database/Cursor;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method private loadModel(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "TT;>;)TT;"
        }
    .end annotation

    .line 140
    iget-object v0, p0, Lcom/vungle/warren/persistence/Repository;->adapters:Ljava/util/Map;

    invoke-interface {v0, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/vungle/warren/persistence/DBAdapter;

    .line 142
    new-instance v0, Lcom/vungle/warren/persistence/Query;

    invoke-interface {p2}, Lcom/vungle/warren/persistence/DBAdapter;->tableName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/vungle/warren/persistence/Query;-><init>(Ljava/lang/String;)V

    const-string v1, "item_id = ? "

    .line 143
    iput-object v1, v0, Lcom/vungle/warren/persistence/Query;->selection:Ljava/lang/String;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    .line 144
    iput-object v1, v0, Lcom/vungle/warren/persistence/Query;->args:[Ljava/lang/String;

    .line 146
    iget-object p1, p0, Lcom/vungle/warren/persistence/Repository;->dbHelper:Lcom/vungle/warren/persistence/DatabaseHelper;

    invoke-virtual {p1, v0}, Lcom/vungle/warren/persistence/DatabaseHelper;->query(Lcom/vungle/warren/persistence/Query;)Landroid/database/Cursor;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 150
    :try_start_0
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 151
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 152
    invoke-static {p1, v0}, Landroid/database/DatabaseUtils;->cursorRowToContentValues(Landroid/database/Cursor;Landroid/content/ContentValues;)V

    .line 153
    invoke-interface {p2, v0}, Lcom/vungle/warren/persistence/DBAdapter;->fromContentValues(Landroid/content/ContentValues;)Ljava/lang/Object;

    move-result-object p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 156
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    return-object p2

    :cond_0
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    goto :goto_0

    :catchall_0
    move-exception p2

    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    throw p2

    :cond_1
    :goto_0
    const/4 p1, 0x0

    return-object p1
.end method

.method private loadValidPlacementIds()Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 456
    new-instance v0, Lcom/vungle/warren/persistence/Query;

    const-string v1, "placement"

    invoke-direct {v0, v1}, Lcom/vungle/warren/persistence/Query;-><init>(Ljava/lang/String;)V

    const-string v1, "is_valid = ?"

    .line 457
    iput-object v1, v0, Lcom/vungle/warren/persistence/Query;->selection:Ljava/lang/String;

    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/String;

    const-string v3, "1"

    const/4 v4, 0x0

    aput-object v3, v2, v4

    .line 458
    iput-object v2, v0, Lcom/vungle/warren/persistence/Query;->args:[Ljava/lang/String;

    new-array v1, v1, [Ljava/lang/String;

    const-string v2, "item_id"

    aput-object v2, v1, v4

    .line 459
    iput-object v1, v0, Lcom/vungle/warren/persistence/Query;->columns:[Ljava/lang/String;

    .line 460
    iget-object v1, p0, Lcom/vungle/warren/persistence/Repository;->dbHelper:Lcom/vungle/warren/persistence/DatabaseHelper;

    invoke-virtual {v1, v0}, Lcom/vungle/warren/persistence/DatabaseHelper;->query(Lcom/vungle/warren/persistence/Query;)Landroid/database/Cursor;

    move-result-object v0

    .line 461
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    if-eqz v0, :cond_1

    :goto_0
    if-eqz v0, :cond_0

    .line 464
    :try_start_0
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 465
    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v1

    .line 468
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    throw v1

    :cond_0
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_1
    return-object v1
.end method

.method private runAndWait(Ljava/util/concurrent/Callable;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Callable<",
            "Ljava/lang/Void;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/vungle/warren/persistence/DatabaseHelper$DBException;
        }
    .end annotation

    .line 920
    :try_start_0
    iget-object v0, p0, Lcom/vungle/warren/persistence/Repository;->backgroundExecutor:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v0, p1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;
    :try_end_0
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 927
    sget-object v0, Lcom/vungle/warren/persistence/Repository;->TAG:Ljava/lang/String;

    const-string v1, "InterruptedException "

    invoke-static {v0, v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 928
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Thread;->interrupt()V

    goto :goto_0

    :catch_1
    move-exception p1

    .line 922
    invoke-virtual {p1}, Ljava/util/concurrent/ExecutionException;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    instance-of v0, v0, Lcom/vungle/warren/persistence/DatabaseHelper$DBException;

    if-nez v0, :cond_0

    .line 925
    invoke-virtual {p1}, Ljava/util/concurrent/ExecutionException;->printStackTrace()V

    :goto_0
    return-void

    .line 923
    :cond_0
    invoke-virtual {p1}, Ljava/util/concurrent/ExecutionException;->getCause()Ljava/lang/Throwable;

    move-result-object p1

    check-cast p1, Lcom/vungle/warren/persistence/DatabaseHelper$DBException;

    throw p1
.end method

.method private saveModel(Ljava/lang/Object;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/vungle/warren/persistence/DatabaseHelper$DBException;
        }
    .end annotation

    .line 164
    iget-object v0, p0, Lcom/vungle/warren/persistence/Repository;->adapters:Ljava/util/Map;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vungle/warren/persistence/DBAdapter;

    .line 165
    invoke-interface {v0, p1}, Lcom/vungle/warren/persistence/DBAdapter;->toContentValues(Ljava/lang/Object;)Landroid/content/ContentValues;

    move-result-object p1

    .line 166
    iget-object v1, p0, Lcom/vungle/warren/persistence/Repository;->dbHelper:Lcom/vungle/warren/persistence/DatabaseHelper;

    invoke-interface {v0}, Lcom/vungle/warren/persistence/DBAdapter;->tableName()Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x5

    invoke-virtual {v1, v0, p1, v2}, Lcom/vungle/warren/persistence/DatabaseHelper;->insertWithConflict(Ljava/lang/String;Landroid/content/ContentValues;I)J

    return-void
.end method


# virtual methods
.method public clearAllData()V
    .locals 1

    .line 619
    iget-object v0, p0, Lcom/vungle/warren/persistence/Repository;->dbHelper:Lcom/vungle/warren/persistence/DatabaseHelper;

    invoke-virtual {v0}, Lcom/vungle/warren/persistence/DatabaseHelper;->dropDb()V

    .line 620
    iget-object v0, p0, Lcom/vungle/warren/persistence/Repository;->designer:Lcom/vungle/warren/persistence/Designer;

    invoke-interface {v0}, Lcom/vungle/warren/persistence/Designer;->clearCache()V

    return-void
.end method

.method public delete(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/vungle/warren/persistence/DatabaseHelper$DBException;
        }
    .end annotation

    .line 377
    new-instance v0, Lcom/vungle/warren/persistence/Repository$12;

    invoke-direct {v0, p0, p1}, Lcom/vungle/warren/persistence/Repository$12;-><init>(Lcom/vungle/warren/persistence/Repository;Ljava/lang/Object;)V

    invoke-direct {p0, v0}, Lcom/vungle/warren/persistence/Repository;->runAndWait(Ljava/util/concurrent/Callable;)V

    return-void
.end method

.method public deleteAdvertisement(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/vungle/warren/persistence/DatabaseHelper$DBException;
        }
    .end annotation

    .line 409
    new-instance v0, Lcom/vungle/warren/persistence/Repository$13;

    invoke-direct {v0, p0, p1}, Lcom/vungle/warren/persistence/Repository$13;-><init>(Lcom/vungle/warren/persistence/Repository;Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/vungle/warren/persistence/Repository;->runAndWait(Ljava/util/concurrent/Callable;)V

    return-void
.end method

.method public findAdsForPlacement(Ljava/lang/String;)Lcom/vungle/warren/persistence/FutureResult;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lcom/vungle/warren/persistence/FutureResult<",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .line 590
    new-instance v0, Lcom/vungle/warren/persistence/FutureResult;

    iget-object v1, p0, Lcom/vungle/warren/persistence/Repository;->backgroundExecutor:Ljava/util/concurrent/ExecutorService;

    new-instance v2, Lcom/vungle/warren/persistence/Repository$19;

    invoke-direct {v2, p0, p1}, Lcom/vungle/warren/persistence/Repository$19;-><init>(Lcom/vungle/warren/persistence/Repository;Ljava/lang/String;)V

    invoke-interface {v1, v2}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/vungle/warren/persistence/FutureResult;-><init>(Ljava/util/concurrent/Future;)V

    return-object v0
.end method

.method public findValidAdvertisementForPlacement(Ljava/lang/String;)Lcom/vungle/warren/persistence/FutureResult;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lcom/vungle/warren/persistence/FutureResult<",
            "Lcom/vungle/warren/model/Advertisement;",
            ">;"
        }
    .end annotation

    .line 248
    new-instance v0, Lcom/vungle/warren/persistence/FutureResult;

    iget-object v1, p0, Lcom/vungle/warren/persistence/Repository;->backgroundExecutor:Ljava/util/concurrent/ExecutorService;

    new-instance v2, Lcom/vungle/warren/persistence/Repository$6;

    invoke-direct {v2, p0, p1}, Lcom/vungle/warren/persistence/Repository$6;-><init>(Lcom/vungle/warren/persistence/Repository;Ljava/lang/String;)V

    invoke-interface {v1, v2}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/vungle/warren/persistence/FutureResult;-><init>(Ljava/util/concurrent/Future;)V

    return-object v0
.end method

.method public getAdvertisementAssetDirectory(Ljava/lang/String;)Lcom/vungle/warren/persistence/FutureResult;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lcom/vungle/warren/persistence/FutureResult<",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation

    .line 476
    new-instance v0, Lcom/vungle/warren/persistence/FutureResult;

    iget-object v1, p0, Lcom/vungle/warren/persistence/Repository;->backgroundExecutor:Ljava/util/concurrent/ExecutorService;

    new-instance v2, Lcom/vungle/warren/persistence/Repository$15;

    invoke-direct {v2, p0, p1}, Lcom/vungle/warren/persistence/Repository$15;-><init>(Lcom/vungle/warren/persistence/Repository;Ljava/lang/String;)V

    invoke-interface {v1, v2}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/vungle/warren/persistence/FutureResult;-><init>(Ljava/util/concurrent/Future;)V

    return-object v0
.end method

.method public getAvailableBidTokens(I)Lcom/vungle/warren/persistence/FutureResult;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lcom/vungle/warren/persistence/FutureResult<",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .line 507
    new-instance v0, Lcom/vungle/warren/persistence/FutureResult;

    iget-object v1, p0, Lcom/vungle/warren/persistence/Repository;->backgroundExecutor:Ljava/util/concurrent/ExecutorService;

    new-instance v2, Lcom/vungle/warren/persistence/Repository$17;

    invoke-direct {v2, p0, p1}, Lcom/vungle/warren/persistence/Repository$17;-><init>(Lcom/vungle/warren/persistence/Repository;I)V

    invoke-interface {v1, v2}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/vungle/warren/persistence/FutureResult;-><init>(Ljava/util/concurrent/Future;)V

    return-object v0
.end method

.method public getValidPlacementIds()Lcom/vungle/warren/persistence/FutureResult;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/vungle/warren/persistence/FutureResult<",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .line 490
    new-instance v0, Lcom/vungle/warren/persistence/FutureResult;

    iget-object v1, p0, Lcom/vungle/warren/persistence/Repository;->backgroundExecutor:Ljava/util/concurrent/ExecutorService;

    new-instance v2, Lcom/vungle/warren/persistence/Repository$16;

    invoke-direct {v2, p0}, Lcom/vungle/warren/persistence/Repository$16;-><init>(Lcom/vungle/warren/persistence/Repository;)V

    invoke-interface {v1, v2}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/vungle/warren/persistence/FutureResult;-><init>(Ljava/util/concurrent/Future;)V

    return-object v0
.end method

.method public getVisionAggregationData(JILjava/lang/String;)Lcom/vungle/warren/persistence/FutureResult;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JI",
            "Ljava/lang/String;",
            ")",
            "Lcom/vungle/warren/persistence/FutureResult<",
            "Ljava/util/List<",
            "Lcom/vungle/warren/vision/VisionAggregationData;",
            ">;>;"
        }
    .end annotation

    .line 734
    new-instance v0, Lcom/vungle/warren/persistence/FutureResult;

    iget-object v1, p0, Lcom/vungle/warren/persistence/Repository;->backgroundExecutor:Ljava/util/concurrent/ExecutorService;

    new-instance v8, Lcom/vungle/warren/persistence/Repository$23;

    move-object v2, v8

    move-object v3, p0

    move-object v4, p4

    move v5, p3

    move-wide v6, p1

    invoke-direct/range {v2 .. v7}, Lcom/vungle/warren/persistence/Repository$23;-><init>(Lcom/vungle/warren/persistence/Repository;Ljava/lang/String;IJ)V

    invoke-interface {v1, v8}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/vungle/warren/persistence/FutureResult;-><init>(Ljava/util/concurrent/Future;)V

    return-object v0
.end method

.method public getVisionAggregationInfo(J)Lcom/vungle/warren/persistence/FutureResult;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)",
            "Lcom/vungle/warren/persistence/FutureResult<",
            "Lcom/vungle/warren/vision/VisionAggregationInfo;",
            ">;"
        }
    .end annotation

    .line 704
    new-instance v0, Lcom/vungle/warren/persistence/FutureResult;

    iget-object v1, p0, Lcom/vungle/warren/persistence/Repository;->backgroundExecutor:Ljava/util/concurrent/ExecutorService;

    new-instance v2, Lcom/vungle/warren/persistence/Repository$22;

    invoke-direct {v2, p0, p1, p2}, Lcom/vungle/warren/persistence/Repository$22;-><init>(Lcom/vungle/warren/persistence/Repository;J)V

    invoke-interface {v1, v2}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/vungle/warren/persistence/FutureResult;-><init>(Ljava/util/concurrent/Future;)V

    return-object v0
.end method

.method public init()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/vungle/warren/persistence/DatabaseHelper$DBException;
        }
    .end annotation

    .line 90
    new-instance v0, Lcom/vungle/warren/persistence/Repository$1;

    invoke-direct {v0, p0}, Lcom/vungle/warren/persistence/Repository$1;-><init>(Lcom/vungle/warren/persistence/Repository;)V

    invoke-direct {p0, v0}, Lcom/vungle/warren/persistence/Repository;->runAndWait(Ljava/util/concurrent/Callable;)V

    return-void
.end method

.method public load(Ljava/lang/String;Ljava/lang/Class;)Lcom/vungle/warren/persistence/FutureResult;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "TT;>;)",
            "Lcom/vungle/warren/persistence/FutureResult<",
            "TT;>;"
        }
    .end annotation

    .line 170
    new-instance v0, Lcom/vungle/warren/persistence/FutureResult;

    iget-object v1, p0, Lcom/vungle/warren/persistence/Repository;->backgroundExecutor:Ljava/util/concurrent/ExecutorService;

    new-instance v2, Lcom/vungle/warren/persistence/Repository$2;

    invoke-direct {v2, p0, p1, p2}, Lcom/vungle/warren/persistence/Repository$2;-><init>(Lcom/vungle/warren/persistence/Repository;Ljava/lang/String;Ljava/lang/Class;)V

    invoke-interface {v1, v2}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/vungle/warren/persistence/FutureResult;-><init>(Ljava/util/concurrent/Future;)V

    return-object v0
.end method

.method public load(Ljava/lang/String;Ljava/lang/Class;Lcom/vungle/warren/persistence/Repository$LoadCallback;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "TT;>;",
            "Lcom/vungle/warren/persistence/Repository$LoadCallback<",
            "TT;>;)V"
        }
    .end annotation

    .line 180
    iget-object v0, p0, Lcom/vungle/warren/persistence/Repository;->backgroundExecutor:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/vungle/warren/persistence/Repository$3;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/vungle/warren/persistence/Repository$3;-><init>(Lcom/vungle/warren/persistence/Repository;Ljava/lang/String;Ljava/lang/Class;Lcom/vungle/warren/persistence/Repository$LoadCallback;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public loadAll(Ljava/lang/Class;)Lcom/vungle/warren/persistence/FutureResult;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;)",
            "Lcom/vungle/warren/persistence/FutureResult<",
            "Ljava/util/List<",
            "TT;>;>;"
        }
    .end annotation

    .line 286
    new-instance v0, Lcom/vungle/warren/persistence/FutureResult;

    iget-object v1, p0, Lcom/vungle/warren/persistence/Repository;->backgroundExecutor:Ljava/util/concurrent/ExecutorService;

    new-instance v2, Lcom/vungle/warren/persistence/Repository$7;

    invoke-direct {v2, p0, p1}, Lcom/vungle/warren/persistence/Repository$7;-><init>(Lcom/vungle/warren/persistence/Repository;Ljava/lang/Class;)V

    invoke-interface {v1, v2}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/vungle/warren/persistence/FutureResult;-><init>(Ljava/util/concurrent/Future;)V

    return-object v0
.end method

.method public loadAllAdAssets(Ljava/lang/String;)Lcom/vungle/warren/persistence/FutureResult;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lcom/vungle/warren/persistence/FutureResult<",
            "Ljava/util/List<",
            "Lcom/vungle/warren/model/AdAsset;",
            ">;>;"
        }
    .end annotation

    .line 360
    new-instance v0, Lcom/vungle/warren/persistence/FutureResult;

    iget-object v1, p0, Lcom/vungle/warren/persistence/Repository;->backgroundExecutor:Ljava/util/concurrent/ExecutorService;

    new-instance v2, Lcom/vungle/warren/persistence/Repository$11;

    invoke-direct {v2, p0, p1}, Lcom/vungle/warren/persistence/Repository$11;-><init>(Lcom/vungle/warren/persistence/Repository;Ljava/lang/String;)V

    invoke-interface {v1, v2}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/vungle/warren/persistence/FutureResult;-><init>(Ljava/util/concurrent/Future;)V

    return-object v0
.end method

.method public loadAllReportToSend()Lcom/vungle/warren/persistence/FutureResult;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/vungle/warren/persistence/FutureResult<",
            "Ljava/util/List<",
            "Lcom/vungle/warren/model/Report;",
            ">;>;"
        }
    .end annotation

    .line 296
    new-instance v0, Lcom/vungle/warren/persistence/FutureResult;

    iget-object v1, p0, Lcom/vungle/warren/persistence/Repository;->backgroundExecutor:Ljava/util/concurrent/ExecutorService;

    new-instance v2, Lcom/vungle/warren/persistence/Repository$8;

    invoke-direct {v2, p0}, Lcom/vungle/warren/persistence/Repository$8;-><init>(Lcom/vungle/warren/persistence/Repository;)V

    invoke-interface {v1, v2}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/vungle/warren/persistence/FutureResult;-><init>(Ljava/util/concurrent/Future;)V

    return-object v0
.end method

.method public loadReadyOrFailedReportToSend()Lcom/vungle/warren/persistence/FutureResult;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/vungle/warren/persistence/FutureResult<",
            "Ljava/util/List<",
            "Lcom/vungle/warren/model/Report;",
            ">;>;"
        }
    .end annotation

    .line 317
    new-instance v0, Lcom/vungle/warren/persistence/FutureResult;

    iget-object v1, p0, Lcom/vungle/warren/persistence/Repository;->backgroundExecutor:Ljava/util/concurrent/ExecutorService;

    new-instance v2, Lcom/vungle/warren/persistence/Repository$9;

    invoke-direct {v2, p0}, Lcom/vungle/warren/persistence/Repository$9;-><init>(Lcom/vungle/warren/persistence/Repository;)V

    invoke-interface {v1, v2}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/vungle/warren/persistence/FutureResult;-><init>(Ljava/util/concurrent/Future;)V

    return-object v0
.end method

.method public loadValidPlacements()Lcom/vungle/warren/persistence/FutureResult;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/vungle/warren/persistence/FutureResult<",
            "Ljava/util/Collection<",
            "Lcom/vungle/warren/model/Placement;",
            ">;>;"
        }
    .end annotation

    .line 439
    new-instance v0, Lcom/vungle/warren/persistence/FutureResult;

    iget-object v1, p0, Lcom/vungle/warren/persistence/Repository;->backgroundExecutor:Ljava/util/concurrent/ExecutorService;

    new-instance v2, Lcom/vungle/warren/persistence/Repository$14;

    invoke-direct {v2, p0}, Lcom/vungle/warren/persistence/Repository$14;-><init>(Lcom/vungle/warren/persistence/Repository;)V

    invoke-interface {v1, v2}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/vungle/warren/persistence/FutureResult;-><init>(Ljava/util/concurrent/Future;)V

    return-object v0
.end method

.method public save(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/vungle/warren/persistence/DatabaseHelper$DBException;
        }
    .end annotation

    .line 195
    new-instance v0, Lcom/vungle/warren/persistence/Repository$4;

    invoke-direct {v0, p0, p1}, Lcom/vungle/warren/persistence/Repository$4;-><init>(Lcom/vungle/warren/persistence/Repository;Ljava/lang/Object;)V

    invoke-direct {p0, v0}, Lcom/vungle/warren/persistence/Repository;->runAndWait(Ljava/util/concurrent/Callable;)V

    return-void
.end method

.method public save(Ljava/lang/Object;Lcom/vungle/warren/persistence/Repository$SaveCallback;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;",
            "Lcom/vungle/warren/persistence/Repository$SaveCallback;",
            ")V"
        }
    .end annotation

    .line 206
    :try_start_0
    iget-object v0, p0, Lcom/vungle/warren/persistence/Repository;->backgroundExecutor:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/vungle/warren/persistence/Repository$5;

    invoke-direct {v1, p0, p1, p2}, Lcom/vungle/warren/persistence/Repository$5;-><init>(Lcom/vungle/warren/persistence/Repository;Ljava/lang/Object;Lcom/vungle/warren/persistence/Repository$SaveCallback;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    move-result-object p1

    .line 231
    invoke-interface {p1}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 236
    invoke-virtual {p1}, Ljava/util/concurrent/ExecutionException;->printStackTrace()V

    goto :goto_0

    :catch_1
    move-exception p1

    .line 233
    sget-object p2, Lcom/vungle/warren/persistence/Repository;->TAG:Ljava/lang/String;

    const-string v0, "InterruptedException "

    invoke-static {p2, v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 234
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Thread;->interrupt()V

    :goto_0
    return-void
.end method

.method public saveAndApplyState(Lcom/vungle/warren/model/Advertisement;Ljava/lang/String;I)V
    .locals 1
    .param p3    # I
        .annotation build Lcom/vungle/warren/model/Advertisement$State;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/vungle/warren/persistence/DatabaseHelper$DBException;
        }
    .end annotation

    .line 651
    new-instance v0, Lcom/vungle/warren/persistence/Repository$20;

    invoke-direct {v0, p0, p3, p1, p2}, Lcom/vungle/warren/persistence/Repository$20;-><init>(Lcom/vungle/warren/persistence/Repository;ILcom/vungle/warren/model/Advertisement;Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/vungle/warren/persistence/Repository;->runAndWait(Ljava/util/concurrent/Callable;)V

    return-void
.end method

.method public setMockDBHelper(Lcom/vungle/warren/persistence/DatabaseHelper;)V
    .locals 0

    .line 934
    iput-object p1, p0, Lcom/vungle/warren/persistence/Repository;->dbHelper:Lcom/vungle/warren/persistence/DatabaseHelper;

    return-void
.end method

.method public setValidPlacements(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/vungle/warren/model/Placement;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/vungle/warren/persistence/DatabaseHelper$DBException;
        }
    .end annotation

    .line 546
    new-instance v0, Lcom/vungle/warren/persistence/Repository$18;

    invoke-direct {v0, p0, p1}, Lcom/vungle/warren/persistence/Repository$18;-><init>(Lcom/vungle/warren/persistence/Repository;Ljava/util/List;)V

    invoke-direct {p0, v0}, Lcom/vungle/warren/persistence/Repository;->runAndWait(Ljava/util/concurrent/Callable;)V

    return-void
.end method

.method public trimVisionData(I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/vungle/warren/persistence/DatabaseHelper$DBException;
        }
    .end annotation

    .line 686
    new-instance v0, Lcom/vungle/warren/persistence/Repository$21;

    invoke-direct {v0, p0, p1}, Lcom/vungle/warren/persistence/Repository$21;-><init>(Lcom/vungle/warren/persistence/Repository;I)V

    invoke-direct {p0, v0}, Lcom/vungle/warren/persistence/Repository;->runAndWait(Ljava/util/concurrent/Callable;)V

    return-void
.end method

.method public updateAndSaveReportState(Ljava/lang/String;Ljava/lang/String;II)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/vungle/warren/persistence/DatabaseHelper$DBException;
        }
    .end annotation

    .line 341
    new-instance v6, Lcom/vungle/warren/persistence/Repository$10;

    move-object v0, v6

    move-object v1, p0

    move v2, p4

    move-object v3, p1

    move v4, p3

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/vungle/warren/persistence/Repository$10;-><init>(Lcom/vungle/warren/persistence/Repository;ILjava/lang/String;ILjava/lang/String;)V

    invoke-direct {p0, v6}, Lcom/vungle/warren/persistence/Repository;->runAndWait(Ljava/util/concurrent/Callable;)V

    return-void
.end method
