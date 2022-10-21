.class public Lcom/soomla/store/domain/data/GoogleMarketItem;
.super Ljava/lang/Object;
.source "GoogleMarketItem.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/soomla/store/domain/data/GoogleMarketItem$Managed;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "SOOMLA GoogleMarketItem"


# instance fields
.field private mManaged:Lcom/soomla/store/domain/data/GoogleMarketItem$Managed;

.field private mPrice:D

.field private mProductId:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/soomla/store/domain/data/GoogleMarketItem$Managed;D)V
    .locals 0

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    iput-object p1, p0, Lcom/soomla/store/domain/data/GoogleMarketItem;->mProductId:Ljava/lang/String;

    .line 34
    iput-object p2, p0, Lcom/soomla/store/domain/data/GoogleMarketItem;->mManaged:Lcom/soomla/store/domain/data/GoogleMarketItem$Managed;

    .line 35
    iput-wide p3, p0, Lcom/soomla/store/domain/data/GoogleMarketItem;->mPrice:D

    return-void
.end method


# virtual methods
.method public getManaged()Lcom/soomla/store/domain/data/GoogleMarketItem$Managed;
    .locals 1

    .line 45
    iget-object v0, p0, Lcom/soomla/store/domain/data/GoogleMarketItem;->mManaged:Lcom/soomla/store/domain/data/GoogleMarketItem$Managed;

    return-object v0
.end method

.method public getPrice()D
    .locals 2

    .line 53
    iget-wide v0, p0, Lcom/soomla/store/domain/data/GoogleMarketItem;->mPrice:D

    return-wide v0
.end method

.method public getProductId()Ljava/lang/String;
    .locals 1

    .line 41
    iget-object v0, p0, Lcom/soomla/store/domain/data/GoogleMarketItem;->mProductId:Ljava/lang/String;

    return-object v0
.end method

.method public setManaged(Lcom/soomla/store/domain/data/GoogleMarketItem$Managed;)V
    .locals 0

    .line 49
    iput-object p1, p0, Lcom/soomla/store/domain/data/GoogleMarketItem;->mManaged:Lcom/soomla/store/domain/data/GoogleMarketItem$Managed;

    return-void
.end method
