.class public final enum Lcom/ironsource/mediationsdk/DemandOnlySmash$SMASH_STATE;
.super Ljava/lang/Enum;
.source "DemandOnlySmash.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ironsource/mediationsdk/DemandOnlySmash;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401c
    name = "SMASH_STATE"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/ironsource/mediationsdk/DemandOnlySmash$SMASH_STATE;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/ironsource/mediationsdk/DemandOnlySmash$SMASH_STATE;

.field public static final enum LOADED:Lcom/ironsource/mediationsdk/DemandOnlySmash$SMASH_STATE;

.field public static final enum LOAD_IN_PROGRESS:Lcom/ironsource/mediationsdk/DemandOnlySmash$SMASH_STATE;

.field public static final enum NOT_LOADED:Lcom/ironsource/mediationsdk/DemandOnlySmash$SMASH_STATE;

.field public static final enum SHOW_IN_PROGRESS:Lcom/ironsource/mediationsdk/DemandOnlySmash$SMASH_STATE;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 93
    new-instance v0, Lcom/ironsource/mediationsdk/DemandOnlySmash$SMASH_STATE;

    const-string v1, "NOT_LOADED"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/ironsource/mediationsdk/DemandOnlySmash$SMASH_STATE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ironsource/mediationsdk/DemandOnlySmash$SMASH_STATE;->NOT_LOADED:Lcom/ironsource/mediationsdk/DemandOnlySmash$SMASH_STATE;

    .line 94
    new-instance v0, Lcom/ironsource/mediationsdk/DemandOnlySmash$SMASH_STATE;

    const-string v1, "LOAD_IN_PROGRESS"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lcom/ironsource/mediationsdk/DemandOnlySmash$SMASH_STATE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ironsource/mediationsdk/DemandOnlySmash$SMASH_STATE;->LOAD_IN_PROGRESS:Lcom/ironsource/mediationsdk/DemandOnlySmash$SMASH_STATE;

    .line 95
    new-instance v0, Lcom/ironsource/mediationsdk/DemandOnlySmash$SMASH_STATE;

    const-string v1, "LOADED"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4}, Lcom/ironsource/mediationsdk/DemandOnlySmash$SMASH_STATE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ironsource/mediationsdk/DemandOnlySmash$SMASH_STATE;->LOADED:Lcom/ironsource/mediationsdk/DemandOnlySmash$SMASH_STATE;

    .line 96
    new-instance v0, Lcom/ironsource/mediationsdk/DemandOnlySmash$SMASH_STATE;

    const-string v1, "SHOW_IN_PROGRESS"

    const/4 v5, 0x3

    invoke-direct {v0, v1, v5}, Lcom/ironsource/mediationsdk/DemandOnlySmash$SMASH_STATE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ironsource/mediationsdk/DemandOnlySmash$SMASH_STATE;->SHOW_IN_PROGRESS:Lcom/ironsource/mediationsdk/DemandOnlySmash$SMASH_STATE;

    const/4 v1, 0x4

    new-array v1, v1, [Lcom/ironsource/mediationsdk/DemandOnlySmash$SMASH_STATE;

    .line 92
    sget-object v6, Lcom/ironsource/mediationsdk/DemandOnlySmash$SMASH_STATE;->NOT_LOADED:Lcom/ironsource/mediationsdk/DemandOnlySmash$SMASH_STATE;

    aput-object v6, v1, v2

    sget-object v2, Lcom/ironsource/mediationsdk/DemandOnlySmash$SMASH_STATE;->LOAD_IN_PROGRESS:Lcom/ironsource/mediationsdk/DemandOnlySmash$SMASH_STATE;

    aput-object v2, v1, v3

    sget-object v2, Lcom/ironsource/mediationsdk/DemandOnlySmash$SMASH_STATE;->LOADED:Lcom/ironsource/mediationsdk/DemandOnlySmash$SMASH_STATE;

    aput-object v2, v1, v4

    aput-object v0, v1, v5

    sput-object v1, Lcom/ironsource/mediationsdk/DemandOnlySmash$SMASH_STATE;->$VALUES:[Lcom/ironsource/mediationsdk/DemandOnlySmash$SMASH_STATE;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 92
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/ironsource/mediationsdk/DemandOnlySmash$SMASH_STATE;
    .locals 1

    .line 92
    const-class v0, Lcom/ironsource/mediationsdk/DemandOnlySmash$SMASH_STATE;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/ironsource/mediationsdk/DemandOnlySmash$SMASH_STATE;

    return-object p0
.end method

.method public static values()[Lcom/ironsource/mediationsdk/DemandOnlySmash$SMASH_STATE;
    .locals 1

    .line 92
    sget-object v0, Lcom/ironsource/mediationsdk/DemandOnlySmash$SMASH_STATE;->$VALUES:[Lcom/ironsource/mediationsdk/DemandOnlySmash$SMASH_STATE;

    invoke-virtual {v0}, [Lcom/ironsource/mediationsdk/DemandOnlySmash$SMASH_STATE;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/ironsource/mediationsdk/DemandOnlySmash$SMASH_STATE;

    return-object v0
.end method
