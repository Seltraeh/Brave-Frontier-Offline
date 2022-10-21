.class public Lcom/soomla/store/events/MarketRefundEvent;
.super Ljava/lang/Object;
.source "MarketRefundEvent.java"


# instance fields
.field private mGoogleMarketItem:Lcom/soomla/store/domain/data/GoogleMarketItem;


# direct methods
.method public constructor <init>(Lcom/soomla/store/domain/data/GoogleMarketItem;)V
    .locals 0

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    iput-object p1, p0, Lcom/soomla/store/events/MarketRefundEvent;->mGoogleMarketItem:Lcom/soomla/store/domain/data/GoogleMarketItem;

    return-void
.end method


# virtual methods
.method public getGoogleMarketItem()Lcom/soomla/store/domain/data/GoogleMarketItem;
    .locals 1

    .line 29
    iget-object v0, p0, Lcom/soomla/store/events/MarketRefundEvent;->mGoogleMarketItem:Lcom/soomla/store/domain/data/GoogleMarketItem;

    return-object v0
.end method
