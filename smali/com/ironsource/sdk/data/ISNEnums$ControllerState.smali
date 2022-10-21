.class public final enum Lcom/ironsource/sdk/data/ISNEnums$ControllerState;
.super Ljava/lang/Enum;
.source "ISNEnums.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/ironsource/sdk/data/ISNEnums$ControllerState;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/ironsource/sdk/data/ISNEnums$ControllerState;

.field public static final enum Failed:Lcom/ironsource/sdk/data/ISNEnums$ControllerState;

.field public static final enum Loaded:Lcom/ironsource/sdk/data/ISNEnums$ControllerState;

.field public static final enum None:Lcom/ironsource/sdk/data/ISNEnums$ControllerState;

.field public static final enum Ready:Lcom/ironsource/sdk/data/ISNEnums$ControllerState;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 44
    new-instance v0, Lcom/ironsource/sdk/data/ISNEnums$ControllerState;

    const-string v1, "None"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/ironsource/sdk/data/ISNEnums$ControllerState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ironsource/sdk/data/ISNEnums$ControllerState;->None:Lcom/ironsource/sdk/data/ISNEnums$ControllerState;

    .line 45
    new-instance v0, Lcom/ironsource/sdk/data/ISNEnums$ControllerState;

    const-string v1, "Loaded"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lcom/ironsource/sdk/data/ISNEnums$ControllerState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ironsource/sdk/data/ISNEnums$ControllerState;->Loaded:Lcom/ironsource/sdk/data/ISNEnums$ControllerState;

    .line 46
    new-instance v0, Lcom/ironsource/sdk/data/ISNEnums$ControllerState;

    const-string v1, "Ready"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4}, Lcom/ironsource/sdk/data/ISNEnums$ControllerState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ironsource/sdk/data/ISNEnums$ControllerState;->Ready:Lcom/ironsource/sdk/data/ISNEnums$ControllerState;

    .line 47
    new-instance v0, Lcom/ironsource/sdk/data/ISNEnums$ControllerState;

    const-string v1, "Failed"

    const/4 v5, 0x3

    invoke-direct {v0, v1, v5}, Lcom/ironsource/sdk/data/ISNEnums$ControllerState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ironsource/sdk/data/ISNEnums$ControllerState;->Failed:Lcom/ironsource/sdk/data/ISNEnums$ControllerState;

    const/4 v1, 0x4

    new-array v1, v1, [Lcom/ironsource/sdk/data/ISNEnums$ControllerState;

    .line 43
    sget-object v6, Lcom/ironsource/sdk/data/ISNEnums$ControllerState;->None:Lcom/ironsource/sdk/data/ISNEnums$ControllerState;

    aput-object v6, v1, v2

    sget-object v2, Lcom/ironsource/sdk/data/ISNEnums$ControllerState;->Loaded:Lcom/ironsource/sdk/data/ISNEnums$ControllerState;

    aput-object v2, v1, v3

    sget-object v2, Lcom/ironsource/sdk/data/ISNEnums$ControllerState;->Ready:Lcom/ironsource/sdk/data/ISNEnums$ControllerState;

    aput-object v2, v1, v4

    aput-object v0, v1, v5

    sput-object v1, Lcom/ironsource/sdk/data/ISNEnums$ControllerState;->$VALUES:[Lcom/ironsource/sdk/data/ISNEnums$ControllerState;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 43
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/ironsource/sdk/data/ISNEnums$ControllerState;
    .locals 1

    .line 43
    const-class v0, Lcom/ironsource/sdk/data/ISNEnums$ControllerState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/ironsource/sdk/data/ISNEnums$ControllerState;

    return-object p0
.end method

.method public static values()[Lcom/ironsource/sdk/data/ISNEnums$ControllerState;
    .locals 1

    .line 43
    sget-object v0, Lcom/ironsource/sdk/data/ISNEnums$ControllerState;->$VALUES:[Lcom/ironsource/sdk/data/ISNEnums$ControllerState;

    invoke-virtual {v0}, [Lcom/ironsource/sdk/data/ISNEnums$ControllerState;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/ironsource/sdk/data/ISNEnums$ControllerState;

    return-object v0
.end method
