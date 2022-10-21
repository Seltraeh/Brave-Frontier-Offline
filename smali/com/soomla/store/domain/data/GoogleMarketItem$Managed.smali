.class public final enum Lcom/soomla/store/domain/data/GoogleMarketItem$Managed;
.super Ljava/lang/Enum;
.source "GoogleMarketItem.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/soomla/store/domain/data/GoogleMarketItem;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Managed"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/soomla/store/domain/data/GoogleMarketItem$Managed;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/soomla/store/domain/data/GoogleMarketItem$Managed;

.field public static final enum MANAGED:Lcom/soomla/store/domain/data/GoogleMarketItem$Managed;

.field public static final enum SUBSCRIPTION:Lcom/soomla/store/domain/data/GoogleMarketItem$Managed;

.field public static final enum UNMANAGED:Lcom/soomla/store/domain/data/GoogleMarketItem$Managed;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 69
    new-instance v0, Lcom/soomla/store/domain/data/GoogleMarketItem$Managed;

    const-string v1, "MANAGED"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/soomla/store/domain/data/GoogleMarketItem$Managed;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/soomla/store/domain/data/GoogleMarketItem$Managed;->MANAGED:Lcom/soomla/store/domain/data/GoogleMarketItem$Managed;

    new-instance v0, Lcom/soomla/store/domain/data/GoogleMarketItem$Managed;

    const-string v1, "UNMANAGED"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lcom/soomla/store/domain/data/GoogleMarketItem$Managed;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/soomla/store/domain/data/GoogleMarketItem$Managed;->UNMANAGED:Lcom/soomla/store/domain/data/GoogleMarketItem$Managed;

    new-instance v0, Lcom/soomla/store/domain/data/GoogleMarketItem$Managed;

    const-string v1, "SUBSCRIPTION"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4}, Lcom/soomla/store/domain/data/GoogleMarketItem$Managed;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/soomla/store/domain/data/GoogleMarketItem$Managed;->SUBSCRIPTION:Lcom/soomla/store/domain/data/GoogleMarketItem$Managed;

    const/4 v1, 0x3

    new-array v1, v1, [Lcom/soomla/store/domain/data/GoogleMarketItem$Managed;

    sget-object v5, Lcom/soomla/store/domain/data/GoogleMarketItem$Managed;->MANAGED:Lcom/soomla/store/domain/data/GoogleMarketItem$Managed;

    aput-object v5, v1, v2

    sget-object v2, Lcom/soomla/store/domain/data/GoogleMarketItem$Managed;->UNMANAGED:Lcom/soomla/store/domain/data/GoogleMarketItem$Managed;

    aput-object v2, v1, v3

    aput-object v0, v1, v4

    sput-object v1, Lcom/soomla/store/domain/data/GoogleMarketItem$Managed;->$VALUES:[Lcom/soomla/store/domain/data/GoogleMarketItem$Managed;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 69
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/soomla/store/domain/data/GoogleMarketItem$Managed;
    .locals 1

    .line 69
    const-class v0, Lcom/soomla/store/domain/data/GoogleMarketItem$Managed;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/soomla/store/domain/data/GoogleMarketItem$Managed;

    return-object p0
.end method

.method public static values()[Lcom/soomla/store/domain/data/GoogleMarketItem$Managed;
    .locals 1

    .line 69
    sget-object v0, Lcom/soomla/store/domain/data/GoogleMarketItem$Managed;->$VALUES:[Lcom/soomla/store/domain/data/GoogleMarketItem$Managed;

    invoke-virtual {v0}, [Lcom/soomla/store/domain/data/GoogleMarketItem$Managed;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/soomla/store/domain/data/GoogleMarketItem$Managed;

    return-object v0
.end method
