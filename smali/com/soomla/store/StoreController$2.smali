.class Lcom/soomla/store/StoreController$2;
.super Ljava/lang/Object;
.source "StoreController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/soomla/store/StoreController;->buyGoogleMarketItem(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$_productId:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 126
    iput-object p1, p0, Lcom/soomla/store/StoreController$2;->val$_productId:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 130
    :try_start_0
    invoke-static {}, Lcom/soomla/store/StoreController;->getInstance()Lcom/soomla/store/StoreController;

    move-result-object v0

    iget-object v1, p0, Lcom/soomla/store/StoreController$2;->val$_productId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/soomla/store/StoreController;->_buyGoogleMarketItem(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method
