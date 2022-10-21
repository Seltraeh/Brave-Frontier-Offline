.class public Lcom/soomla/store/events/MarketEvent;
.super Ljava/lang/Object;
.source "MarketEvent.java"


# instance fields
.field public mPackageName:Ljava/lang/String;

.field public mSignature:Ljava/lang/String;

.field public mSignedData:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    iput-object p1, p0, Lcom/soomla/store/events/MarketEvent;->mSignedData:Ljava/lang/String;

    .line 26
    iput-object p2, p0, Lcom/soomla/store/events/MarketEvent;->mSignature:Ljava/lang/String;

    .line 27
    iput-object p3, p0, Lcom/soomla/store/events/MarketEvent;->mPackageName:Ljava/lang/String;

    return-void
.end method
