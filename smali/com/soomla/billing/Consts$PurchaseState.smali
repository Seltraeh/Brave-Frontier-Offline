.class public final enum Lcom/soomla/billing/Consts$PurchaseState;
.super Ljava/lang/Enum;
.source "Consts.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/soomla/billing/Consts;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "PurchaseState"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/soomla/billing/Consts$PurchaseState;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/soomla/billing/Consts$PurchaseState;

.field public static final enum CANCELED:Lcom/soomla/billing/Consts$PurchaseState;

.field public static final enum PURCHASED:Lcom/soomla/billing/Consts$PurchaseState;

.field public static final enum REFUNDED:Lcom/soomla/billing/Consts$PurchaseState;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 48
    new-instance v0, Lcom/soomla/billing/Consts$PurchaseState;

    const-string v1, "PURCHASED"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/soomla/billing/Consts$PurchaseState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/soomla/billing/Consts$PurchaseState;->PURCHASED:Lcom/soomla/billing/Consts$PurchaseState;

    .line 49
    new-instance v0, Lcom/soomla/billing/Consts$PurchaseState;

    const-string v1, "CANCELED"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lcom/soomla/billing/Consts$PurchaseState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/soomla/billing/Consts$PurchaseState;->CANCELED:Lcom/soomla/billing/Consts$PurchaseState;

    .line 50
    new-instance v0, Lcom/soomla/billing/Consts$PurchaseState;

    const-string v1, "REFUNDED"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4}, Lcom/soomla/billing/Consts$PurchaseState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/soomla/billing/Consts$PurchaseState;->REFUNDED:Lcom/soomla/billing/Consts$PurchaseState;

    const/4 v1, 0x3

    new-array v1, v1, [Lcom/soomla/billing/Consts$PurchaseState;

    .line 46
    sget-object v5, Lcom/soomla/billing/Consts$PurchaseState;->PURCHASED:Lcom/soomla/billing/Consts$PurchaseState;

    aput-object v5, v1, v2

    sget-object v2, Lcom/soomla/billing/Consts$PurchaseState;->CANCELED:Lcom/soomla/billing/Consts$PurchaseState;

    aput-object v2, v1, v3

    aput-object v0, v1, v4

    sput-object v1, Lcom/soomla/billing/Consts$PurchaseState;->$VALUES:[Lcom/soomla/billing/Consts$PurchaseState;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 46
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(I)Lcom/soomla/billing/Consts$PurchaseState;
    .locals 2

    .line 54
    invoke-static {}, Lcom/soomla/billing/Consts$PurchaseState;->values()[Lcom/soomla/billing/Consts$PurchaseState;

    move-result-object v0

    if-ltz p0, :cond_1

    .line 55
    array-length v1, v0

    if-lt p0, v1, :cond_0

    goto :goto_0

    .line 58
    :cond_0
    aget-object p0, v0, p0

    return-object p0

    .line 56
    :cond_1
    :goto_0
    sget-object p0, Lcom/soomla/billing/Consts$PurchaseState;->CANCELED:Lcom/soomla/billing/Consts$PurchaseState;

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/soomla/billing/Consts$PurchaseState;
    .locals 1

    .line 46
    const-class v0, Lcom/soomla/billing/Consts$PurchaseState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/soomla/billing/Consts$PurchaseState;

    return-object p0
.end method

.method public static values()[Lcom/soomla/billing/Consts$PurchaseState;
    .locals 1

    .line 46
    sget-object v0, Lcom/soomla/billing/Consts$PurchaseState;->$VALUES:[Lcom/soomla/billing/Consts$PurchaseState;

    invoke-virtual {v0}, [Lcom/soomla/billing/Consts$PurchaseState;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/soomla/billing/Consts$PurchaseState;

    return-object v0
.end method
