.class final enum Lcom/ironsource/adapters/vungle/VungleAdapter$BannerState;
.super Ljava/lang/Enum;
.source "VungleAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ironsource/adapters/vungle/VungleAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "BannerState"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/ironsource/adapters/vungle/VungleAdapter$BannerState;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/ironsource/adapters/vungle/VungleAdapter$BannerState;

.field public static final enum CACHED:Lcom/ironsource/adapters/vungle/VungleAdapter$BannerState;

.field public static final enum REQUESTING:Lcom/ironsource/adapters/vungle/VungleAdapter$BannerState;

.field public static final enum UNKNOWN:Lcom/ironsource/adapters/vungle/VungleAdapter$BannerState;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 61
    new-instance v0, Lcom/ironsource/adapters/vungle/VungleAdapter$BannerState;

    const-string v1, "UNKNOWN"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/ironsource/adapters/vungle/VungleAdapter$BannerState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ironsource/adapters/vungle/VungleAdapter$BannerState;->UNKNOWN:Lcom/ironsource/adapters/vungle/VungleAdapter$BannerState;

    .line 62
    new-instance v0, Lcom/ironsource/adapters/vungle/VungleAdapter$BannerState;

    const-string v1, "REQUESTING"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lcom/ironsource/adapters/vungle/VungleAdapter$BannerState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ironsource/adapters/vungle/VungleAdapter$BannerState;->REQUESTING:Lcom/ironsource/adapters/vungle/VungleAdapter$BannerState;

    .line 63
    new-instance v0, Lcom/ironsource/adapters/vungle/VungleAdapter$BannerState;

    const-string v1, "CACHED"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4}, Lcom/ironsource/adapters/vungle/VungleAdapter$BannerState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ironsource/adapters/vungle/VungleAdapter$BannerState;->CACHED:Lcom/ironsource/adapters/vungle/VungleAdapter$BannerState;

    const/4 v1, 0x3

    new-array v1, v1, [Lcom/ironsource/adapters/vungle/VungleAdapter$BannerState;

    .line 60
    sget-object v5, Lcom/ironsource/adapters/vungle/VungleAdapter$BannerState;->UNKNOWN:Lcom/ironsource/adapters/vungle/VungleAdapter$BannerState;

    aput-object v5, v1, v2

    sget-object v2, Lcom/ironsource/adapters/vungle/VungleAdapter$BannerState;->REQUESTING:Lcom/ironsource/adapters/vungle/VungleAdapter$BannerState;

    aput-object v2, v1, v3

    aput-object v0, v1, v4

    sput-object v1, Lcom/ironsource/adapters/vungle/VungleAdapter$BannerState;->$VALUES:[Lcom/ironsource/adapters/vungle/VungleAdapter$BannerState;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 60
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/ironsource/adapters/vungle/VungleAdapter$BannerState;
    .locals 1

    .line 60
    const-class v0, Lcom/ironsource/adapters/vungle/VungleAdapter$BannerState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/ironsource/adapters/vungle/VungleAdapter$BannerState;

    return-object p0
.end method

.method public static values()[Lcom/ironsource/adapters/vungle/VungleAdapter$BannerState;
    .locals 1

    .line 60
    sget-object v0, Lcom/ironsource/adapters/vungle/VungleAdapter$BannerState;->$VALUES:[Lcom/ironsource/adapters/vungle/VungleAdapter$BannerState;

    invoke-virtual {v0}, [Lcom/ironsource/adapters/vungle/VungleAdapter$BannerState;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/ironsource/adapters/vungle/VungleAdapter$BannerState;

    return-object v0
.end method
