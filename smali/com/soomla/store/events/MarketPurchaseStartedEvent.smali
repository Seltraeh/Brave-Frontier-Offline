.class public Lcom/soomla/store/events/MarketPurchaseStartedEvent;
.super Ljava/lang/Object;
.source "MarketPurchaseStartedEvent.java"


# instance fields
.field private mProductID:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    iput-object p1, p0, Lcom/soomla/store/events/MarketPurchaseStartedEvent;->mProductID:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getProductId()Ljava/lang/String;
    .locals 1

    .line 27
    iget-object v0, p0, Lcom/soomla/store/events/MarketPurchaseStartedEvent;->mProductID:Ljava/lang/String;

    return-object v0
.end method
