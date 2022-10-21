.class Lcom/vungle/warren/AdLoader$2$1;
.super Ljava/lang/Object;
.source "AdLoader.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vungle/warren/AdLoader$2;->onResponse(Lcom/vungle/warren/network/Call;Lcom/vungle/warren/network/Response;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/vungle/warren/AdLoader$2;

.field final synthetic val$response:Lcom/vungle/warren/network/Response;


# direct methods
.method constructor <init>(Lcom/vungle/warren/AdLoader$2;Lcom/vungle/warren/network/Response;)V
    .locals 0

    .line 586
    iput-object p1, p0, Lcom/vungle/warren/AdLoader$2$1;->this$1:Lcom/vungle/warren/AdLoader$2;

    iput-object p2, p0, Lcom/vungle/warren/AdLoader$2$1;->val$response:Lcom/vungle/warren/network/Response;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 13

    const-string v0, "data_science_cache"

    const-string v1, "ad_markup"

    .line 593
    iget-object v2, p0, Lcom/vungle/warren/AdLoader$2$1;->this$1:Lcom/vungle/warren/AdLoader$2;

    iget-object v2, v2, Lcom/vungle/warren/AdLoader$2;->this$0:Lcom/vungle/warren/AdLoader;

    invoke-static {v2}, Lcom/vungle/warren/AdLoader;->access$200(Lcom/vungle/warren/AdLoader;)Lcom/vungle/warren/persistence/Repository;

    move-result-object v2

    iget-object v3, p0, Lcom/vungle/warren/AdLoader$2$1;->this$1:Lcom/vungle/warren/AdLoader$2;

    iget-object v3, v3, Lcom/vungle/warren/AdLoader$2;->val$op:Lcom/vungle/warren/AdLoader$Operation;

    iget-object v3, v3, Lcom/vungle/warren/AdLoader$Operation;->id:Ljava/lang/String;

    const-class v4, Lcom/vungle/warren/model/Placement;

    invoke-virtual {v2, v3, v4}, Lcom/vungle/warren/persistence/Repository;->load(Ljava/lang/String;Ljava/lang/Class;)Lcom/vungle/warren/persistence/FutureResult;

    move-result-object v2

    invoke-virtual {v2}, Lcom/vungle/warren/persistence/FutureResult;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/vungle/warren/model/Placement;

    const/4 v3, 0x2

    const/4 v4, 0x0

    if-nez v2, :cond_0

    .line 595
    invoke-static {}, Lcom/vungle/warren/AdLoader;->access$600()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Placement metadata not found for requested advertisement."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 596
    iget-object v0, p0, Lcom/vungle/warren/AdLoader$2$1;->this$1:Lcom/vungle/warren/AdLoader$2;

    iget-object v0, v0, Lcom/vungle/warren/AdLoader$2;->val$downloadCallback:Lcom/vungle/warren/AdLoader$DownloadCallback;

    new-instance v1, Lcom/vungle/warren/error/VungleException;

    invoke-direct {v1, v3}, Lcom/vungle/warren/error/VungleException;-><init>(I)V

    iget-object v2, p0, Lcom/vungle/warren/AdLoader$2$1;->this$1:Lcom/vungle/warren/AdLoader$2;

    iget-object v2, v2, Lcom/vungle/warren/AdLoader$2;->val$op:Lcom/vungle/warren/AdLoader$Operation;

    iget-object v2, v2, Lcom/vungle/warren/AdLoader$Operation;->id:Ljava/lang/String;

    invoke-interface {v0, v1, v2, v4}, Lcom/vungle/warren/AdLoader$DownloadCallback;->onDownloadFailed(Lcom/vungle/warren/error/VungleException;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 600
    :cond_0
    iget-object v5, p0, Lcom/vungle/warren/AdLoader$2$1;->val$response:Lcom/vungle/warren/network/Response;

    invoke-virtual {v5}, Lcom/vungle/warren/network/Response;->isSuccessful()Z

    move-result v5

    if-nez v5, :cond_2

    .line 601
    iget-object v0, p0, Lcom/vungle/warren/AdLoader$2$1;->this$1:Lcom/vungle/warren/AdLoader$2;

    iget-object v0, v0, Lcom/vungle/warren/AdLoader$2;->this$0:Lcom/vungle/warren/AdLoader;

    invoke-static {v0}, Lcom/vungle/warren/AdLoader;->access$1300(Lcom/vungle/warren/AdLoader;)Lcom/vungle/warren/VungleApiClient;

    move-result-object v0

    iget-object v1, p0, Lcom/vungle/warren/AdLoader$2$1;->val$response:Lcom/vungle/warren/network/Response;

    invoke-virtual {v0, v1}, Lcom/vungle/warren/VungleApiClient;->getRetryAfterHeaderValue(Lcom/vungle/warren/network/Response;)J

    move-result-wide v0

    const-wide/16 v5, 0x0

    cmp-long v3, v0, v5

    if-lez v3, :cond_1

    .line 602
    invoke-virtual {v2}, Lcom/vungle/warren/model/Placement;->isAutoCached()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 603
    iget-object v3, p0, Lcom/vungle/warren/AdLoader$2$1;->this$1:Lcom/vungle/warren/AdLoader$2;

    iget-object v5, v3, Lcom/vungle/warren/AdLoader$2;->this$0:Lcom/vungle/warren/AdLoader;

    iget-object v3, v3, Lcom/vungle/warren/AdLoader$2;->val$op:Lcom/vungle/warren/AdLoader$Operation;

    iget-object v3, v3, Lcom/vungle/warren/AdLoader$Operation;->size:Lcom/vungle/warren/AdConfig$AdSize;

    invoke-virtual {v5, v2, v3, v0, v1}, Lcom/vungle/warren/AdLoader;->loadEndless(Lcom/vungle/warren/model/Placement;Lcom/vungle/warren/AdConfig$AdSize;J)V

    .line 604
    iget-object v0, p0, Lcom/vungle/warren/AdLoader$2$1;->this$1:Lcom/vungle/warren/AdLoader$2;

    iget-object v0, v0, Lcom/vungle/warren/AdLoader$2;->val$downloadCallback:Lcom/vungle/warren/AdLoader$DownloadCallback;

    new-instance v1, Lcom/vungle/warren/error/VungleException;

    const/16 v2, 0xe

    invoke-direct {v1, v2}, Lcom/vungle/warren/error/VungleException;-><init>(I)V

    iget-object v2, p0, Lcom/vungle/warren/AdLoader$2$1;->this$1:Lcom/vungle/warren/AdLoader$2;

    iget-object v2, v2, Lcom/vungle/warren/AdLoader$2;->val$op:Lcom/vungle/warren/AdLoader$Operation;

    iget-object v2, v2, Lcom/vungle/warren/AdLoader$Operation;->id:Ljava/lang/String;

    invoke-interface {v0, v1, v2, v4}, Lcom/vungle/warren/AdLoader$DownloadCallback;->onDownloadFailed(Lcom/vungle/warren/error/VungleException;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 609
    :cond_1
    invoke-static {}, Lcom/vungle/warren/AdLoader;->access$600()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Failed to retrieve advertisement information"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 610
    iget-object v0, p0, Lcom/vungle/warren/AdLoader$2$1;->this$1:Lcom/vungle/warren/AdLoader$2;

    iget-object v1, v0, Lcom/vungle/warren/AdLoader$2;->val$downloadCallback:Lcom/vungle/warren/AdLoader$DownloadCallback;

    iget-object v0, v0, Lcom/vungle/warren/AdLoader$2;->this$0:Lcom/vungle/warren/AdLoader;

    iget-object v2, p0, Lcom/vungle/warren/AdLoader$2$1;->val$response:Lcom/vungle/warren/network/Response;

    invoke-virtual {v2}, Lcom/vungle/warren/network/Response;->code()I

    move-result v2

    invoke-static {v0, v2}, Lcom/vungle/warren/AdLoader;->access$1400(Lcom/vungle/warren/AdLoader;I)Lcom/vungle/warren/error/VungleException;

    move-result-object v0

    iget-object v2, p0, Lcom/vungle/warren/AdLoader$2$1;->this$1:Lcom/vungle/warren/AdLoader$2;

    iget-object v2, v2, Lcom/vungle/warren/AdLoader$2;->val$op:Lcom/vungle/warren/AdLoader$Operation;

    iget-object v2, v2, Lcom/vungle/warren/AdLoader$Operation;->id:Ljava/lang/String;

    invoke-interface {v1, v0, v2, v4}, Lcom/vungle/warren/AdLoader$DownloadCallback;->onDownloadFailed(Lcom/vungle/warren/error/VungleException;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 614
    :cond_2
    iget-object v5, p0, Lcom/vungle/warren/AdLoader$2$1;->val$response:Lcom/vungle/warren/network/Response;

    invoke-virtual {v5}, Lcom/vungle/warren/network/Response;->body()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/google/gson/JsonObject;

    .line 615
    invoke-static {}, Lcom/vungle/warren/AdLoader;->access$600()Ljava/lang/String;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Ads Response: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v6, 0x1

    if-eqz v5, :cond_12

    const-string v7, "ads"

    .line 616
    invoke-virtual {v5, v7}, Lcom/google/gson/JsonObject;->has(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_12

    invoke-virtual {v5, v7}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v8

    invoke-virtual {v8}, Lcom/google/gson/JsonElement;->isJsonNull()Z

    move-result v8

    if-nez v8, :cond_12

    .line 617
    invoke-virtual {v5, v7}, Lcom/google/gson/JsonObject;->getAsJsonArray(Ljava/lang/String;)Lcom/google/gson/JsonArray;

    move-result-object v5

    if-eqz v5, :cond_11

    .line 619
    invoke-virtual {v5}, Lcom/google/gson/JsonArray;->size()I

    move-result v7

    if-nez v7, :cond_3

    goto/16 :goto_5

    :cond_3
    const/4 v7, 0x0

    .line 625
    invoke-virtual {v5, v7}, Lcom/google/gson/JsonArray;->get(I)Lcom/google/gson/JsonElement;

    move-result-object v5

    invoke-virtual {v5}, Lcom/google/gson/JsonElement;->getAsJsonObject()Lcom/google/gson/JsonObject;

    move-result-object v5

    const/16 v8, 0x1a

    .line 627
    :try_start_0
    new-instance v9, Lcom/vungle/warren/model/Advertisement;

    invoke-direct {v9, v5}, Lcom/vungle/warren/model/Advertisement;-><init>(Lcom/google/gson/JsonObject;)V

    .line 629
    iget-object v10, p0, Lcom/vungle/warren/AdLoader$2$1;->this$1:Lcom/vungle/warren/AdLoader$2;

    iget-object v10, v10, Lcom/vungle/warren/AdLoader$2;->this$0:Lcom/vungle/warren/AdLoader;

    invoke-static {v10}, Lcom/vungle/warren/AdLoader;->access$1500(Lcom/vungle/warren/AdLoader;)Lcom/vungle/warren/VisionController;

    move-result-object v10

    invoke-virtual {v10}, Lcom/vungle/warren/VisionController;->isEnabled()Z

    move-result v10

    if-eqz v10, :cond_5

    .line 630
    invoke-virtual {v5, v1}, Lcom/google/gson/JsonObject;->getAsJsonObject(Ljava/lang/String;)Lcom/google/gson/JsonObject;

    move-result-object v10

    .line 631
    invoke-static {v10, v0}, Lcom/vungle/warren/model/JsonUtil;->hasNonNull(Lcom/google/gson/JsonElement;Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_4

    .line 632
    iget-object v11, p0, Lcom/vungle/warren/AdLoader$2$1;->this$1:Lcom/vungle/warren/AdLoader$2;

    iget-object v11, v11, Lcom/vungle/warren/AdLoader$2;->this$0:Lcom/vungle/warren/AdLoader;

    invoke-static {v11}, Lcom/vungle/warren/AdLoader;->access$1500(Lcom/vungle/warren/AdLoader;)Lcom/vungle/warren/VisionController;

    move-result-object v11

    invoke-virtual {v10, v0}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v11, v0}, Lcom/vungle/warren/VisionController;->setDataScienceCache(Ljava/lang/String;)V

    goto :goto_0

    .line 634
    :cond_4
    iget-object v0, p0, Lcom/vungle/warren/AdLoader$2$1;->this$1:Lcom/vungle/warren/AdLoader$2;

    iget-object v0, v0, Lcom/vungle/warren/AdLoader$2;->this$0:Lcom/vungle/warren/AdLoader;

    invoke-static {v0}, Lcom/vungle/warren/AdLoader;->access$1500(Lcom/vungle/warren/AdLoader;)Lcom/vungle/warren/VisionController;

    move-result-object v0

    invoke-virtual {v0, v4}, Lcom/vungle/warren/VisionController;->setDataScienceCache(Ljava/lang/String;)V

    .line 645
    :cond_5
    :goto_0
    iget-object v0, p0, Lcom/vungle/warren/AdLoader$2$1;->this$1:Lcom/vungle/warren/AdLoader$2;

    iget-object v0, v0, Lcom/vungle/warren/AdLoader$2;->this$0:Lcom/vungle/warren/AdLoader;

    invoke-static {v0}, Lcom/vungle/warren/AdLoader;->access$200(Lcom/vungle/warren/AdLoader;)Lcom/vungle/warren/persistence/Repository;

    move-result-object v0

    invoke-virtual {v9}, Lcom/vungle/warren/model/Advertisement;->getId()Ljava/lang/String;

    move-result-object v10

    const-class v11, Lcom/vungle/warren/model/Advertisement;

    invoke-virtual {v0, v10, v11}, Lcom/vungle/warren/persistence/Repository;->load(Ljava/lang/String;Ljava/lang/Class;)Lcom/vungle/warren/persistence/FutureResult;

    move-result-object v0

    invoke-virtual {v0}, Lcom/vungle/warren/persistence/FutureResult;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vungle/warren/model/Advertisement;

    if-eqz v0, :cond_7

    .line 647
    invoke-virtual {v0}, Lcom/vungle/warren/model/Advertisement;->getState()I

    move-result v0

    if-eqz v0, :cond_6

    if-eq v0, v6, :cond_6

    if-ne v0, v3, :cond_7

    .line 649
    :cond_6
    invoke-static {}, Lcom/vungle/warren/AdLoader;->access$600()Ljava/lang/String;

    move-result-object v0

    const-string v3, "Operation Cancelled"

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 650
    iget-object v0, p0, Lcom/vungle/warren/AdLoader$2$1;->this$1:Lcom/vungle/warren/AdLoader$2;

    iget-object v0, v0, Lcom/vungle/warren/AdLoader$2;->val$downloadCallback:Lcom/vungle/warren/AdLoader$DownloadCallback;

    new-instance v3, Lcom/vungle/warren/error/VungleException;

    const/16 v7, 0x19

    invoke-direct {v3, v7}, Lcom/vungle/warren/error/VungleException;-><init>(I)V

    iget-object v7, p0, Lcom/vungle/warren/AdLoader$2$1;->this$1:Lcom/vungle/warren/AdLoader$2;

    iget-object v7, v7, Lcom/vungle/warren/AdLoader$2;->val$op:Lcom/vungle/warren/AdLoader$Operation;

    iget-object v7, v7, Lcom/vungle/warren/AdLoader$Operation;->id:Ljava/lang/String;

    invoke-interface {v0, v3, v7, v4}, Lcom/vungle/warren/AdLoader$DownloadCallback;->onDownloadFailed(Lcom/vungle/warren/error/VungleException;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 655
    :cond_7
    invoke-virtual {v2}, Lcom/vungle/warren/model/Placement;->isHeaderBidding()Z

    move-result v0

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/vungle/warren/AdLoader$2$1;->this$1:Lcom/vungle/warren/AdLoader$2;

    iget-object v0, v0, Lcom/vungle/warren/AdLoader$2;->val$bidTokenCallBack:Lcom/vungle/warren/HeaderBiddingCallback;

    if-eqz v0, :cond_8

    .line 656
    iget-object v0, p0, Lcom/vungle/warren/AdLoader$2$1;->this$1:Lcom/vungle/warren/AdLoader$2;

    iget-object v0, v0, Lcom/vungle/warren/AdLoader$2;->val$bidTokenCallBack:Lcom/vungle/warren/HeaderBiddingCallback;

    iget-object v3, p0, Lcom/vungle/warren/AdLoader$2$1;->this$1:Lcom/vungle/warren/AdLoader$2;

    iget-object v3, v3, Lcom/vungle/warren/AdLoader$2;->val$op:Lcom/vungle/warren/AdLoader$Operation;

    iget-object v3, v3, Lcom/vungle/warren/AdLoader$Operation;->id:Ljava/lang/String;

    invoke-virtual {v9}, Lcom/vungle/warren/model/Advertisement;->getBidToken()Ljava/lang/String;

    move-result-object v10

    invoke-interface {v0, v3, v10}, Lcom/vungle/warren/HeaderBiddingCallback;->onBidTokenAvailable(Ljava/lang/String;Ljava/lang/String;)V

    .line 660
    :cond_8
    iget-object v0, p0, Lcom/vungle/warren/AdLoader$2$1;->this$1:Lcom/vungle/warren/AdLoader$2;

    iget-object v0, v0, Lcom/vungle/warren/AdLoader$2;->this$0:Lcom/vungle/warren/AdLoader;

    invoke-static {v0}, Lcom/vungle/warren/AdLoader;->access$200(Lcom/vungle/warren/AdLoader;)Lcom/vungle/warren/persistence/Repository;

    move-result-object v0

    invoke-virtual {v9}, Lcom/vungle/warren/model/Advertisement;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/vungle/warren/persistence/Repository;->deleteAdvertisement(Ljava/lang/String;)V

    .line 662
    invoke-virtual {v9}, Lcom/vungle/warren/model/Advertisement;->getDownloadableUrls()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    .line 663
    iget-object v3, p0, Lcom/vungle/warren/AdLoader$2$1;->this$1:Lcom/vungle/warren/AdLoader$2;

    iget-object v3, v3, Lcom/vungle/warren/AdLoader$2;->this$0:Lcom/vungle/warren/AdLoader;

    invoke-virtual {v3, v9}, Lcom/vungle/warren/AdLoader;->getDestinationDir(Lcom/vungle/warren/model/Advertisement;)Ljava/io/File;

    move-result-object v3

    if-eqz v3, :cond_f

    .line 664
    invoke-virtual {v3}, Ljava/io/File;->isDirectory()Z

    move-result v10

    if-nez v10, :cond_9

    goto/16 :goto_3

    .line 669
    :cond_9
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_c

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/util/Map$Entry;

    .line 670
    invoke-interface {v10}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    invoke-static {v11}, Landroid/webkit/URLUtil;->isHttpsUrl(Ljava/lang/String;)Z

    move-result v11

    if-nez v11, :cond_b

    invoke-interface {v10}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    invoke-static {v11}, Landroid/webkit/URLUtil;->isHttpUrl(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_a

    goto :goto_2

    .line 674
    :cond_a
    iget-object v0, p0, Lcom/vungle/warren/AdLoader$2$1;->this$1:Lcom/vungle/warren/AdLoader$2;

    iget-object v0, v0, Lcom/vungle/warren/AdLoader$2;->val$downloadCallback:Lcom/vungle/warren/AdLoader$DownloadCallback;

    new-instance v3, Lcom/vungle/warren/error/VungleException;

    const/16 v7, 0xb

    invoke-direct {v3, v7}, Lcom/vungle/warren/error/VungleException;-><init>(I)V

    iget-object v7, p0, Lcom/vungle/warren/AdLoader$2$1;->this$1:Lcom/vungle/warren/AdLoader$2;

    iget-object v7, v7, Lcom/vungle/warren/AdLoader$2;->val$op:Lcom/vungle/warren/AdLoader$Operation;

    iget-object v7, v7, Lcom/vungle/warren/AdLoader$Operation;->id:Ljava/lang/String;

    invoke-virtual {v9}, Lcom/vungle/warren/model/Advertisement;->getId()Ljava/lang/String;

    move-result-object v9

    invoke-interface {v0, v3, v7, v9}, Lcom/vungle/warren/AdLoader$DownloadCallback;->onDownloadFailed(Lcom/vungle/warren/error/VungleException;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 671
    :cond_b
    :goto_2
    iget-object v11, p0, Lcom/vungle/warren/AdLoader$2$1;->this$1:Lcom/vungle/warren/AdLoader$2;

    iget-object v11, v11, Lcom/vungle/warren/AdLoader$2;->this$0:Lcom/vungle/warren/AdLoader;

    .line 672
    invoke-interface {v10}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/String;

    invoke-interface {v10}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    .line 671
    invoke-virtual {v11, v9, v3, v12, v10}, Lcom/vungle/warren/AdLoader;->saveAsset(Lcom/vungle/warren/model/Advertisement;Ljava/io/File;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 679
    :cond_c
    invoke-virtual {v2}, Lcom/vungle/warren/model/Placement;->getPlacementAdType()I

    move-result v0

    if-ne v0, v6, :cond_e

    .line 680
    invoke-virtual {v9}, Lcom/vungle/warren/model/Advertisement;->getAdType()I

    move-result v0

    if-ne v0, v6, :cond_d

    const-string v0, "banner"

    invoke-virtual {v9}, Lcom/vungle/warren/model/Advertisement;->getTemplateType()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_e

    .line 681
    :cond_d
    iget-object v0, p0, Lcom/vungle/warren/AdLoader$2$1;->this$1:Lcom/vungle/warren/AdLoader$2;

    iget-object v0, v0, Lcom/vungle/warren/AdLoader$2;->val$downloadCallback:Lcom/vungle/warren/AdLoader$DownloadCallback;

    new-instance v3, Lcom/vungle/warren/error/VungleException;

    invoke-direct {v3, v6}, Lcom/vungle/warren/error/VungleException;-><init>(I)V

    iget-object v7, p0, Lcom/vungle/warren/AdLoader$2$1;->this$1:Lcom/vungle/warren/AdLoader$2;

    iget-object v7, v7, Lcom/vungle/warren/AdLoader$2;->val$op:Lcom/vungle/warren/AdLoader$Operation;

    iget-object v7, v7, Lcom/vungle/warren/AdLoader$Operation;->id:Ljava/lang/String;

    invoke-virtual {v9}, Lcom/vungle/warren/model/Advertisement;->getId()Ljava/lang/String;

    move-result-object v9

    invoke-interface {v0, v3, v7, v9}, Lcom/vungle/warren/AdLoader$DownloadCallback;->onDownloadFailed(Lcom/vungle/warren/error/VungleException;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 685
    :cond_e
    invoke-virtual {v9}, Lcom/vungle/warren/model/Advertisement;->getAdConfig()Lcom/vungle/warren/AdConfig;

    move-result-object v0

    iget-object v3, p0, Lcom/vungle/warren/AdLoader$2$1;->this$1:Lcom/vungle/warren/AdLoader$2;

    iget-object v3, v3, Lcom/vungle/warren/AdLoader$2;->val$op:Lcom/vungle/warren/AdLoader$Operation;

    iget-object v3, v3, Lcom/vungle/warren/AdLoader$Operation;->size:Lcom/vungle/warren/AdConfig$AdSize;

    invoke-virtual {v0, v3}, Lcom/vungle/warren/AdConfig;->setAdSize(Lcom/vungle/warren/AdConfig$AdSize;)V

    .line 686
    iget-object v0, p0, Lcom/vungle/warren/AdLoader$2$1;->this$1:Lcom/vungle/warren/AdLoader$2;

    iget-wide v10, v0, Lcom/vungle/warren/AdLoader$2;->val$requestStartTime:J

    invoke-virtual {v9, v10, v11}, Lcom/vungle/warren/model/Advertisement;->setAdRequestStartTime(J)V

    .line 687
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    invoke-virtual {v9, v10, v11}, Lcom/vungle/warren/model/Advertisement;->setAssetDownloadStartTime(J)V

    .line 688
    iget-object v0, p0, Lcom/vungle/warren/AdLoader$2$1;->this$1:Lcom/vungle/warren/AdLoader$2;

    iget-object v0, v0, Lcom/vungle/warren/AdLoader$2;->this$0:Lcom/vungle/warren/AdLoader;

    invoke-static {v0}, Lcom/vungle/warren/AdLoader;->access$200(Lcom/vungle/warren/AdLoader;)Lcom/vungle/warren/persistence/Repository;

    move-result-object v0

    iget-object v3, p0, Lcom/vungle/warren/AdLoader$2$1;->this$1:Lcom/vungle/warren/AdLoader$2;

    iget-object v3, v3, Lcom/vungle/warren/AdLoader$2;->val$op:Lcom/vungle/warren/AdLoader$Operation;

    iget-object v3, v3, Lcom/vungle/warren/AdLoader$Operation;->id:Ljava/lang/String;

    invoke-virtual {v0, v9, v3, v7}, Lcom/vungle/warren/persistence/Repository;->saveAndApplyState(Lcom/vungle/warren/model/Advertisement;Ljava/lang/String;I)V

    .line 689
    iget-object v0, p0, Lcom/vungle/warren/AdLoader$2$1;->this$1:Lcom/vungle/warren/AdLoader$2;

    iget-object v0, v0, Lcom/vungle/warren/AdLoader$2;->this$0:Lcom/vungle/warren/AdLoader;

    iget-object v3, p0, Lcom/vungle/warren/AdLoader$2$1;->this$1:Lcom/vungle/warren/AdLoader$2;

    iget-object v3, v3, Lcom/vungle/warren/AdLoader$2;->val$op:Lcom/vungle/warren/AdLoader$Operation;

    iget-object v7, p0, Lcom/vungle/warren/AdLoader$2$1;->this$1:Lcom/vungle/warren/AdLoader$2;

    iget-object v7, v7, Lcom/vungle/warren/AdLoader$2;->val$downloadCallback:Lcom/vungle/warren/AdLoader$DownloadCallback;

    invoke-static {v0, v3, v9, v7}, Lcom/vungle/warren/AdLoader;->access$1000(Lcom/vungle/warren/AdLoader;Lcom/vungle/warren/AdLoader$Operation;Lcom/vungle/warren/model/Advertisement;Lcom/vungle/warren/AdLoader$DownloadCallback;)V

    goto/16 :goto_6

    .line 665
    :cond_f
    :goto_3
    iget-object v0, p0, Lcom/vungle/warren/AdLoader$2$1;->this$1:Lcom/vungle/warren/AdLoader$2;

    iget-object v0, v0, Lcom/vungle/warren/AdLoader$2;->val$downloadCallback:Lcom/vungle/warren/AdLoader$DownloadCallback;

    new-instance v3, Lcom/vungle/warren/error/VungleException;

    invoke-direct {v3, v8}, Lcom/vungle/warren/error/VungleException;-><init>(I)V

    iget-object v7, p0, Lcom/vungle/warren/AdLoader$2$1;->this$1:Lcom/vungle/warren/AdLoader$2;

    iget-object v7, v7, Lcom/vungle/warren/AdLoader$2;->val$op:Lcom/vungle/warren/AdLoader$Operation;

    iget-object v7, v7, Lcom/vungle/warren/AdLoader$Operation;->id:Ljava/lang/String;

    invoke-virtual {v9}, Lcom/vungle/warren/model/Advertisement;->getId()Ljava/lang/String;

    move-result-object v9

    invoke-interface {v0, v3, v7, v9}, Lcom/vungle/warren/AdLoader$DownloadCallback;->onDownloadFailed(Lcom/vungle/warren/error/VungleException;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lcom/vungle/warren/persistence/DatabaseHelper$DBException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    .line 716
    :catch_0
    iget-object v0, p0, Lcom/vungle/warren/AdLoader$2$1;->this$1:Lcom/vungle/warren/AdLoader$2;

    iget-object v0, v0, Lcom/vungle/warren/AdLoader$2;->val$downloadCallback:Lcom/vungle/warren/AdLoader$DownloadCallback;

    new-instance v1, Lcom/vungle/warren/error/VungleException;

    invoke-direct {v1, v8}, Lcom/vungle/warren/error/VungleException;-><init>(I)V

    iget-object v2, p0, Lcom/vungle/warren/AdLoader$2$1;->this$1:Lcom/vungle/warren/AdLoader$2;

    iget-object v2, v2, Lcom/vungle/warren/AdLoader$2;->val$op:Lcom/vungle/warren/AdLoader$Operation;

    iget-object v2, v2, Lcom/vungle/warren/AdLoader$Operation;->id:Ljava/lang/String;

    invoke-interface {v0, v1, v2, v4}, Lcom/vungle/warren/AdLoader$DownloadCallback;->onDownloadFailed(Lcom/vungle/warren/error/VungleException;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_6

    :catch_1
    nop

    .line 693
    invoke-virtual {v5, v1}, Lcom/google/gson/JsonObject;->getAsJsonObject(Ljava/lang/String;)Lcom/google/gson/JsonObject;

    move-result-object v0

    const-string v1, "sleep"

    .line 694
    invoke-virtual {v0, v1}, Lcom/google/gson/JsonObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_10

    .line 695
    invoke-virtual {v0, v1}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/gson/JsonElement;->getAsInt()I

    move-result v0

    int-to-long v0, v0

    .line 699
    invoke-virtual {v2, v0, v1}, Lcom/vungle/warren/model/Placement;->snooze(J)V

    .line 701
    :try_start_1
    iget-object v3, p0, Lcom/vungle/warren/AdLoader$2$1;->this$1:Lcom/vungle/warren/AdLoader$2;

    iget-object v3, v3, Lcom/vungle/warren/AdLoader$2;->this$0:Lcom/vungle/warren/AdLoader;

    invoke-static {v3}, Lcom/vungle/warren/AdLoader;->access$200(Lcom/vungle/warren/AdLoader;)Lcom/vungle/warren/persistence/Repository;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/vungle/warren/persistence/Repository;->save(Ljava/lang/Object;)V
    :try_end_1
    .catch Lcom/vungle/warren/persistence/DatabaseHelper$DBException; {:try_start_1 .. :try_end_1} :catch_2

    .line 706
    invoke-virtual {v2}, Lcom/vungle/warren/model/Placement;->isAutoCached()Z

    move-result v3

    if-eqz v3, :cond_10

    .line 710
    iget-object v3, p0, Lcom/vungle/warren/AdLoader$2$1;->this$1:Lcom/vungle/warren/AdLoader$2;

    iget-object v5, v3, Lcom/vungle/warren/AdLoader$2;->this$0:Lcom/vungle/warren/AdLoader;

    iget-object v3, v3, Lcom/vungle/warren/AdLoader$2;->val$op:Lcom/vungle/warren/AdLoader$Operation;

    iget-object v3, v3, Lcom/vungle/warren/AdLoader$Operation;->size:Lcom/vungle/warren/AdConfig$AdSize;

    const-wide/16 v7, 0x3e8

    mul-long v0, v0, v7

    invoke-virtual {v5, v2, v3, v0, v1}, Lcom/vungle/warren/AdLoader;->loadEndless(Lcom/vungle/warren/model/Placement;Lcom/vungle/warren/AdConfig$AdSize;J)V

    goto :goto_4

    .line 703
    :catch_2
    iget-object v0, p0, Lcom/vungle/warren/AdLoader$2$1;->this$1:Lcom/vungle/warren/AdLoader$2;

    iget-object v0, v0, Lcom/vungle/warren/AdLoader$2;->val$downloadCallback:Lcom/vungle/warren/AdLoader$DownloadCallback;

    new-instance v1, Lcom/vungle/warren/error/VungleException;

    invoke-direct {v1, v8}, Lcom/vungle/warren/error/VungleException;-><init>(I)V

    iget-object v2, p0, Lcom/vungle/warren/AdLoader$2$1;->this$1:Lcom/vungle/warren/AdLoader$2;

    iget-object v2, v2, Lcom/vungle/warren/AdLoader$2;->val$op:Lcom/vungle/warren/AdLoader$Operation;

    iget-object v2, v2, Lcom/vungle/warren/AdLoader$Operation;->id:Ljava/lang/String;

    invoke-interface {v0, v1, v2, v4}, Lcom/vungle/warren/AdLoader$DownloadCallback;->onDownloadFailed(Lcom/vungle/warren/error/VungleException;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 714
    :cond_10
    :goto_4
    iget-object v0, p0, Lcom/vungle/warren/AdLoader$2$1;->this$1:Lcom/vungle/warren/AdLoader$2;

    iget-object v0, v0, Lcom/vungle/warren/AdLoader$2;->val$downloadCallback:Lcom/vungle/warren/AdLoader$DownloadCallback;

    new-instance v1, Lcom/vungle/warren/error/VungleException;

    invoke-direct {v1, v6}, Lcom/vungle/warren/error/VungleException;-><init>(I)V

    iget-object v2, p0, Lcom/vungle/warren/AdLoader$2$1;->this$1:Lcom/vungle/warren/AdLoader$2;

    iget-object v2, v2, Lcom/vungle/warren/AdLoader$2;->val$op:Lcom/vungle/warren/AdLoader$Operation;

    iget-object v2, v2, Lcom/vungle/warren/AdLoader$Operation;->id:Ljava/lang/String;

    invoke-interface {v0, v1, v2, v4}, Lcom/vungle/warren/AdLoader$DownloadCallback;->onDownloadFailed(Lcom/vungle/warren/error/VungleException;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_6

    .line 621
    :cond_11
    :goto_5
    iget-object v0, p0, Lcom/vungle/warren/AdLoader$2$1;->this$1:Lcom/vungle/warren/AdLoader$2;

    iget-object v0, v0, Lcom/vungle/warren/AdLoader$2;->val$downloadCallback:Lcom/vungle/warren/AdLoader$DownloadCallback;

    new-instance v1, Lcom/vungle/warren/error/VungleException;

    invoke-direct {v1, v6}, Lcom/vungle/warren/error/VungleException;-><init>(I)V

    iget-object v2, p0, Lcom/vungle/warren/AdLoader$2$1;->this$1:Lcom/vungle/warren/AdLoader$2;

    iget-object v2, v2, Lcom/vungle/warren/AdLoader$2;->val$op:Lcom/vungle/warren/AdLoader$Operation;

    iget-object v2, v2, Lcom/vungle/warren/AdLoader$Operation;->id:Ljava/lang/String;

    invoke-interface {v0, v1, v2, v4}, Lcom/vungle/warren/AdLoader$DownloadCallback;->onDownloadFailed(Lcom/vungle/warren/error/VungleException;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 719
    :cond_12
    iget-object v0, p0, Lcom/vungle/warren/AdLoader$2$1;->this$1:Lcom/vungle/warren/AdLoader$2;

    iget-object v0, v0, Lcom/vungle/warren/AdLoader$2;->val$downloadCallback:Lcom/vungle/warren/AdLoader$DownloadCallback;

    new-instance v1, Lcom/vungle/warren/error/VungleException;

    invoke-direct {v1, v6}, Lcom/vungle/warren/error/VungleException;-><init>(I)V

    iget-object v2, p0, Lcom/vungle/warren/AdLoader$2$1;->this$1:Lcom/vungle/warren/AdLoader$2;

    iget-object v2, v2, Lcom/vungle/warren/AdLoader$2;->val$op:Lcom/vungle/warren/AdLoader$Operation;

    iget-object v2, v2, Lcom/vungle/warren/AdLoader$Operation;->id:Ljava/lang/String;

    invoke-interface {v0, v1, v2, v4}, Lcom/vungle/warren/AdLoader$DownloadCallback;->onDownloadFailed(Lcom/vungle/warren/error/VungleException;Ljava/lang/String;Ljava/lang/String;)V

    :goto_6
    return-void
.end method
