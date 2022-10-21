.class Lcom/vungle/warren/persistence/Repository$22;
.super Ljava/lang/Object;
.source "Repository.java"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vungle/warren/persistence/Repository;->getVisionAggregationInfo(J)Lcom/vungle/warren/persistence/FutureResult;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable<",
        "Lcom/vungle/warren/vision/VisionAggregationInfo;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vungle/warren/persistence/Repository;

.field final synthetic val$after:J


# direct methods
.method constructor <init>(Lcom/vungle/warren/persistence/Repository;J)V
    .locals 0

    .line 704
    iput-object p1, p0, Lcom/vungle/warren/persistence/Repository$22;->this$0:Lcom/vungle/warren/persistence/Repository;

    iput-wide p2, p0, Lcom/vungle/warren/persistence/Repository$22;->val$after:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call()Lcom/vungle/warren/vision/VisionAggregationInfo;
    .locals 4

    .line 707
    new-instance v0, Lcom/vungle/warren/persistence/Query;

    const-string v1, "vision_data"

    invoke-direct {v0, v1}, Lcom/vungle/warren/persistence/Query;-><init>(Ljava/lang/String;)V

    const-string v1, "timestamp >= ?"

    .line 708
    iput-object v1, v0, Lcom/vungle/warren/persistence/Query;->selection:Ljava/lang/String;

    const-string v1, "_id DESC"

    .line 709
    iput-object v1, v0, Lcom/vungle/warren/persistence/Query;->orderBy:Ljava/lang/String;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    .line 710
    iget-wide v2, p0, Lcom/vungle/warren/persistence/Repository$22;->val$after:J

    invoke-static {v2, v3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    iput-object v1, v0, Lcom/vungle/warren/persistence/Query;->args:[Ljava/lang/String;

    .line 711
    iget-object v1, p0, Lcom/vungle/warren/persistence/Repository$22;->this$0:Lcom/vungle/warren/persistence/Repository;

    iget-object v1, v1, Lcom/vungle/warren/persistence/Repository;->dbHelper:Lcom/vungle/warren/persistence/DatabaseHelper;

    invoke-virtual {v1, v0}, Lcom/vungle/warren/persistence/DatabaseHelper;->query(Lcom/vungle/warren/persistence/Query;)Landroid/database/Cursor;

    move-result-object v0

    .line 712
    iget-object v1, p0, Lcom/vungle/warren/persistence/Repository$22;->this$0:Lcom/vungle/warren/persistence/Repository;

    invoke-static {v1}, Lcom/vungle/warren/persistence/Repository;->access$400(Lcom/vungle/warren/persistence/Repository;)Ljava/util/Map;

    move-result-object v1

    const-class v2, Lcom/vungle/warren/model/VisionData;

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/vungle/warren/model/VisionDataDBAdapter;

    if-eqz v0, :cond_1

    if-eqz v1, :cond_1

    .line 715
    :try_start_0
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 716
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    .line 717
    invoke-static {v0, v2}, Landroid/database/DatabaseUtils;->cursorRowToContentValues(Landroid/database/Cursor;Landroid/content/ContentValues;)V

    .line 718
    invoke-virtual {v1, v2}, Lcom/vungle/warren/model/VisionDataDBAdapter;->fromContentValues(Landroid/content/ContentValues;)Lcom/vungle/warren/model/VisionData;

    move-result-object v1

    .line 719
    new-instance v2, Lcom/vungle/warren/vision/VisionAggregationInfo;

    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v3

    iget-object v1, v1, Lcom/vungle/warren/model/VisionData;->creative:Ljava/lang/String;

    invoke-direct {v2, v3, v1}, Lcom/vungle/warren/vision/VisionAggregationInfo;-><init>(ILjava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 722
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    return-object v2

    :cond_0
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    goto :goto_0

    :catchall_0
    move-exception v1

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    throw v1

    :cond_1
    :goto_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public bridge synthetic call()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 704
    invoke-virtual {p0}, Lcom/vungle/warren/persistence/Repository$22;->call()Lcom/vungle/warren/vision/VisionAggregationInfo;

    move-result-object v0

    return-object v0
.end method
