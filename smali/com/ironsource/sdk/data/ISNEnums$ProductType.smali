.class public final enum Lcom/ironsource/sdk/data/ISNEnums$ProductType;
.super Ljava/lang/Enum;
.source "ISNEnums.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/ironsource/sdk/data/ISNEnums$ProductType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/ironsource/sdk/data/ISNEnums$ProductType;

.field public static final enum Banner:Lcom/ironsource/sdk/data/ISNEnums$ProductType;

.field public static final enum Interstitial:Lcom/ironsource/sdk/data/ISNEnums$ProductType;

.field public static final enum OfferWall:Lcom/ironsource/sdk/data/ISNEnums$ProductType;

.field public static final enum OfferWallCredits:Lcom/ironsource/sdk/data/ISNEnums$ProductType;

.field public static final enum RewardedVideo:Lcom/ironsource/sdk/data/ISNEnums$ProductType;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .line 25
    new-instance v0, Lcom/ironsource/sdk/data/ISNEnums$ProductType;

    const-string v1, "Banner"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/ironsource/sdk/data/ISNEnums$ProductType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ironsource/sdk/data/ISNEnums$ProductType;->Banner:Lcom/ironsource/sdk/data/ISNEnums$ProductType;

    .line 26
    new-instance v0, Lcom/ironsource/sdk/data/ISNEnums$ProductType;

    const-string v1, "OfferWall"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lcom/ironsource/sdk/data/ISNEnums$ProductType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ironsource/sdk/data/ISNEnums$ProductType;->OfferWall:Lcom/ironsource/sdk/data/ISNEnums$ProductType;

    .line 27
    new-instance v0, Lcom/ironsource/sdk/data/ISNEnums$ProductType;

    const-string v1, "Interstitial"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4}, Lcom/ironsource/sdk/data/ISNEnums$ProductType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ironsource/sdk/data/ISNEnums$ProductType;->Interstitial:Lcom/ironsource/sdk/data/ISNEnums$ProductType;

    .line 28
    new-instance v0, Lcom/ironsource/sdk/data/ISNEnums$ProductType;

    const-string v1, "OfferWallCredits"

    const/4 v5, 0x3

    invoke-direct {v0, v1, v5}, Lcom/ironsource/sdk/data/ISNEnums$ProductType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ironsource/sdk/data/ISNEnums$ProductType;->OfferWallCredits:Lcom/ironsource/sdk/data/ISNEnums$ProductType;

    .line 29
    new-instance v0, Lcom/ironsource/sdk/data/ISNEnums$ProductType;

    const-string v1, "RewardedVideo"

    const/4 v6, 0x4

    invoke-direct {v0, v1, v6}, Lcom/ironsource/sdk/data/ISNEnums$ProductType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ironsource/sdk/data/ISNEnums$ProductType;->RewardedVideo:Lcom/ironsource/sdk/data/ISNEnums$ProductType;

    const/4 v1, 0x5

    new-array v1, v1, [Lcom/ironsource/sdk/data/ISNEnums$ProductType;

    .line 23
    sget-object v7, Lcom/ironsource/sdk/data/ISNEnums$ProductType;->Banner:Lcom/ironsource/sdk/data/ISNEnums$ProductType;

    aput-object v7, v1, v2

    sget-object v2, Lcom/ironsource/sdk/data/ISNEnums$ProductType;->OfferWall:Lcom/ironsource/sdk/data/ISNEnums$ProductType;

    aput-object v2, v1, v3

    sget-object v2, Lcom/ironsource/sdk/data/ISNEnums$ProductType;->Interstitial:Lcom/ironsource/sdk/data/ISNEnums$ProductType;

    aput-object v2, v1, v4

    sget-object v2, Lcom/ironsource/sdk/data/ISNEnums$ProductType;->OfferWallCredits:Lcom/ironsource/sdk/data/ISNEnums$ProductType;

    aput-object v2, v1, v5

    aput-object v0, v1, v6

    sput-object v1, Lcom/ironsource/sdk/data/ISNEnums$ProductType;->$VALUES:[Lcom/ironsource/sdk/data/ISNEnums$ProductType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 23
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/ironsource/sdk/data/ISNEnums$ProductType;
    .locals 1

    .line 23
    const-class v0, Lcom/ironsource/sdk/data/ISNEnums$ProductType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/ironsource/sdk/data/ISNEnums$ProductType;

    return-object p0
.end method

.method public static values()[Lcom/ironsource/sdk/data/ISNEnums$ProductType;
    .locals 1

    .line 23
    sget-object v0, Lcom/ironsource/sdk/data/ISNEnums$ProductType;->$VALUES:[Lcom/ironsource/sdk/data/ISNEnums$ProductType;

    invoke-virtual {v0}, [Lcom/ironsource/sdk/data/ISNEnums$ProductType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/ironsource/sdk/data/ISNEnums$ProductType;

    return-object v0
.end method
