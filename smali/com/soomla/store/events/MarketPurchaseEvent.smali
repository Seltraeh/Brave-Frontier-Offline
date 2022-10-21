.class public Lcom/soomla/store/events/MarketPurchaseEvent;
.super Ljava/lang/Object;
.source "MarketPurchaseEvent.java"


# instance fields
.field private mGoogleMarketItem:Lcom/soomla/store/domain/data/GoogleMarketItem;

.field public mSignature:Ljava/lang/String;

.field public mSignedData:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/soomla/store/domain/data/GoogleMarketItem;)V
    .locals 0

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    iput-object p1, p0, Lcom/soomla/store/events/MarketPurchaseEvent;->mGoogleMarketItem:Lcom/soomla/store/domain/data/GoogleMarketItem;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 28
    iput-object v0, p0, Lcom/soomla/store/events/MarketPurchaseEvent;->mGoogleMarketItem:Lcom/soomla/store/domain/data/GoogleMarketItem;

    .line 29
    iput-object p1, p0, Lcom/soomla/store/events/MarketPurchaseEvent;->mSignedData:Ljava/lang/String;

    .line 30
    iput-object p2, p0, Lcom/soomla/store/events/MarketPurchaseEvent;->mSignature:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getGoogleMarketItem()Lcom/soomla/store/domain/data/GoogleMarketItem;
    .locals 1

    .line 38
    iget-object v0, p0, Lcom/soomla/store/events/MarketPurchaseEvent;->mGoogleMarketItem:Lcom/soomla/store/domain/data/GoogleMarketItem;

    return-object v0
.end method
