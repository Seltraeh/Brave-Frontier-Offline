.class public final enum Lcom/ironsource/mediationsdk/AbstractSmash$MEDIATION_STATE;
.super Ljava/lang/Enum;
.source "AbstractSmash.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ironsource/mediationsdk/AbstractSmash;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "MEDIATION_STATE"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/ironsource/mediationsdk/AbstractSmash$MEDIATION_STATE;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/ironsource/mediationsdk/AbstractSmash$MEDIATION_STATE;

.field public static final enum AVAILABLE:Lcom/ironsource/mediationsdk/AbstractSmash$MEDIATION_STATE;

.field public static final enum CAPPED_PER_DAY:Lcom/ironsource/mediationsdk/AbstractSmash$MEDIATION_STATE;

.field public static final enum CAPPED_PER_SESSION:Lcom/ironsource/mediationsdk/AbstractSmash$MEDIATION_STATE;

.field public static final enum EXHAUSTED:Lcom/ironsource/mediationsdk/AbstractSmash$MEDIATION_STATE;

.field public static final enum INITIATED:Lcom/ironsource/mediationsdk/AbstractSmash$MEDIATION_STATE;

.field public static final enum INIT_FAILED:Lcom/ironsource/mediationsdk/AbstractSmash$MEDIATION_STATE;

.field public static final enum INIT_PENDING:Lcom/ironsource/mediationsdk/AbstractSmash$MEDIATION_STATE;

.field public static final enum LOAD_PENDING:Lcom/ironsource/mediationsdk/AbstractSmash$MEDIATION_STATE;

.field public static final enum NEEDS_RELOAD:Lcom/ironsource/mediationsdk/AbstractSmash$MEDIATION_STATE;

.field public static final enum NOT_AVAILABLE:Lcom/ironsource/mediationsdk/AbstractSmash$MEDIATION_STATE;

.field public static final enum NOT_INITIATED:Lcom/ironsource/mediationsdk/AbstractSmash$MEDIATION_STATE;


# instance fields
.field private mValue:I


# direct methods
.method static constructor <clinit>()V
    .locals 14

    .line 22
    new-instance v0, Lcom/ironsource/mediationsdk/AbstractSmash$MEDIATION_STATE;

    const-string v1, "NOT_INITIATED"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/ironsource/mediationsdk/AbstractSmash$MEDIATION_STATE;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/ironsource/mediationsdk/AbstractSmash$MEDIATION_STATE;->NOT_INITIATED:Lcom/ironsource/mediationsdk/AbstractSmash$MEDIATION_STATE;

    .line 23
    new-instance v0, Lcom/ironsource/mediationsdk/AbstractSmash$MEDIATION_STATE;

    const-string v1, "INIT_FAILED"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3, v3}, Lcom/ironsource/mediationsdk/AbstractSmash$MEDIATION_STATE;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/ironsource/mediationsdk/AbstractSmash$MEDIATION_STATE;->INIT_FAILED:Lcom/ironsource/mediationsdk/AbstractSmash$MEDIATION_STATE;

    .line 24
    new-instance v0, Lcom/ironsource/mediationsdk/AbstractSmash$MEDIATION_STATE;

    const-string v1, "INITIATED"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4, v4}, Lcom/ironsource/mediationsdk/AbstractSmash$MEDIATION_STATE;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/ironsource/mediationsdk/AbstractSmash$MEDIATION_STATE;->INITIATED:Lcom/ironsource/mediationsdk/AbstractSmash$MEDIATION_STATE;

    .line 25
    new-instance v0, Lcom/ironsource/mediationsdk/AbstractSmash$MEDIATION_STATE;

    const-string v1, "AVAILABLE"

    const/4 v5, 0x3

    invoke-direct {v0, v1, v5, v5}, Lcom/ironsource/mediationsdk/AbstractSmash$MEDIATION_STATE;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/ironsource/mediationsdk/AbstractSmash$MEDIATION_STATE;->AVAILABLE:Lcom/ironsource/mediationsdk/AbstractSmash$MEDIATION_STATE;

    .line 26
    new-instance v0, Lcom/ironsource/mediationsdk/AbstractSmash$MEDIATION_STATE;

    const-string v1, "NOT_AVAILABLE"

    const/4 v6, 0x4

    invoke-direct {v0, v1, v6, v6}, Lcom/ironsource/mediationsdk/AbstractSmash$MEDIATION_STATE;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/ironsource/mediationsdk/AbstractSmash$MEDIATION_STATE;->NOT_AVAILABLE:Lcom/ironsource/mediationsdk/AbstractSmash$MEDIATION_STATE;

    .line 27
    new-instance v0, Lcom/ironsource/mediationsdk/AbstractSmash$MEDIATION_STATE;

    const-string v1, "EXHAUSTED"

    const/4 v7, 0x5

    invoke-direct {v0, v1, v7, v7}, Lcom/ironsource/mediationsdk/AbstractSmash$MEDIATION_STATE;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/ironsource/mediationsdk/AbstractSmash$MEDIATION_STATE;->EXHAUSTED:Lcom/ironsource/mediationsdk/AbstractSmash$MEDIATION_STATE;

    .line 28
    new-instance v0, Lcom/ironsource/mediationsdk/AbstractSmash$MEDIATION_STATE;

    const-string v1, "CAPPED_PER_SESSION"

    const/4 v8, 0x6

    invoke-direct {v0, v1, v8, v8}, Lcom/ironsource/mediationsdk/AbstractSmash$MEDIATION_STATE;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/ironsource/mediationsdk/AbstractSmash$MEDIATION_STATE;->CAPPED_PER_SESSION:Lcom/ironsource/mediationsdk/AbstractSmash$MEDIATION_STATE;

    .line 29
    new-instance v0, Lcom/ironsource/mediationsdk/AbstractSmash$MEDIATION_STATE;

    const-string v1, "INIT_PENDING"

    const/4 v9, 0x7

    invoke-direct {v0, v1, v9, v9}, Lcom/ironsource/mediationsdk/AbstractSmash$MEDIATION_STATE;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/ironsource/mediationsdk/AbstractSmash$MEDIATION_STATE;->INIT_PENDING:Lcom/ironsource/mediationsdk/AbstractSmash$MEDIATION_STATE;

    .line 30
    new-instance v0, Lcom/ironsource/mediationsdk/AbstractSmash$MEDIATION_STATE;

    const-string v1, "LOAD_PENDING"

    const/16 v10, 0x8

    invoke-direct {v0, v1, v10, v10}, Lcom/ironsource/mediationsdk/AbstractSmash$MEDIATION_STATE;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/ironsource/mediationsdk/AbstractSmash$MEDIATION_STATE;->LOAD_PENDING:Lcom/ironsource/mediationsdk/AbstractSmash$MEDIATION_STATE;

    .line 31
    new-instance v0, Lcom/ironsource/mediationsdk/AbstractSmash$MEDIATION_STATE;

    const-string v1, "CAPPED_PER_DAY"

    const/16 v11, 0x9

    invoke-direct {v0, v1, v11, v11}, Lcom/ironsource/mediationsdk/AbstractSmash$MEDIATION_STATE;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/ironsource/mediationsdk/AbstractSmash$MEDIATION_STATE;->CAPPED_PER_DAY:Lcom/ironsource/mediationsdk/AbstractSmash$MEDIATION_STATE;

    .line 32
    new-instance v0, Lcom/ironsource/mediationsdk/AbstractSmash$MEDIATION_STATE;

    const-string v1, "NEEDS_RELOAD"

    const/16 v12, 0xa

    invoke-direct {v0, v1, v12, v12}, Lcom/ironsource/mediationsdk/AbstractSmash$MEDIATION_STATE;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/ironsource/mediationsdk/AbstractSmash$MEDIATION_STATE;->NEEDS_RELOAD:Lcom/ironsource/mediationsdk/AbstractSmash$MEDIATION_STATE;

    const/16 v1, 0xb

    new-array v1, v1, [Lcom/ironsource/mediationsdk/AbstractSmash$MEDIATION_STATE;

    .line 21
    sget-object v13, Lcom/ironsource/mediationsdk/AbstractSmash$MEDIATION_STATE;->NOT_INITIATED:Lcom/ironsource/mediationsdk/AbstractSmash$MEDIATION_STATE;

    aput-object v13, v1, v2

    sget-object v2, Lcom/ironsource/mediationsdk/AbstractSmash$MEDIATION_STATE;->INIT_FAILED:Lcom/ironsource/mediationsdk/AbstractSmash$MEDIATION_STATE;

    aput-object v2, v1, v3

    sget-object v2, Lcom/ironsource/mediationsdk/AbstractSmash$MEDIATION_STATE;->INITIATED:Lcom/ironsource/mediationsdk/AbstractSmash$MEDIATION_STATE;

    aput-object v2, v1, v4

    sget-object v2, Lcom/ironsource/mediationsdk/AbstractSmash$MEDIATION_STATE;->AVAILABLE:Lcom/ironsource/mediationsdk/AbstractSmash$MEDIATION_STATE;

    aput-object v2, v1, v5

    sget-object v2, Lcom/ironsource/mediationsdk/AbstractSmash$MEDIATION_STATE;->NOT_AVAILABLE:Lcom/ironsource/mediationsdk/AbstractSmash$MEDIATION_STATE;

    aput-object v2, v1, v6

    sget-object v2, Lcom/ironsource/mediationsdk/AbstractSmash$MEDIATION_STATE;->EXHAUSTED:Lcom/ironsource/mediationsdk/AbstractSmash$MEDIATION_STATE;

    aput-object v2, v1, v7

    sget-object v2, Lcom/ironsource/mediationsdk/AbstractSmash$MEDIATION_STATE;->CAPPED_PER_SESSION:Lcom/ironsource/mediationsdk/AbstractSmash$MEDIATION_STATE;

    aput-object v2, v1, v8

    sget-object v2, Lcom/ironsource/mediationsdk/AbstractSmash$MEDIATION_STATE;->INIT_PENDING:Lcom/ironsource/mediationsdk/AbstractSmash$MEDIATION_STATE;

    aput-object v2, v1, v9

    sget-object v2, Lcom/ironsource/mediationsdk/AbstractSmash$MEDIATION_STATE;->LOAD_PENDING:Lcom/ironsource/mediationsdk/AbstractSmash$MEDIATION_STATE;

    aput-object v2, v1, v10

    sget-object v2, Lcom/ironsource/mediationsdk/AbstractSmash$MEDIATION_STATE;->CAPPED_PER_DAY:Lcom/ironsource/mediationsdk/AbstractSmash$MEDIATION_STATE;

    aput-object v2, v1, v11

    aput-object v0, v1, v12

    sput-object v1, Lcom/ironsource/mediationsdk/AbstractSmash$MEDIATION_STATE;->$VALUES:[Lcom/ironsource/mediationsdk/AbstractSmash$MEDIATION_STATE;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 36
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 37
    iput p3, p0, Lcom/ironsource/mediationsdk/AbstractSmash$MEDIATION_STATE;->mValue:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/ironsource/mediationsdk/AbstractSmash$MEDIATION_STATE;
    .locals 1

    .line 21
    const-class v0, Lcom/ironsource/mediationsdk/AbstractSmash$MEDIATION_STATE;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/ironsource/mediationsdk/AbstractSmash$MEDIATION_STATE;

    return-object p0
.end method

.method public static values()[Lcom/ironsource/mediationsdk/AbstractSmash$MEDIATION_STATE;
    .locals 1

    .line 21
    sget-object v0, Lcom/ironsource/mediationsdk/AbstractSmash$MEDIATION_STATE;->$VALUES:[Lcom/ironsource/mediationsdk/AbstractSmash$MEDIATION_STATE;

    invoke-virtual {v0}, [Lcom/ironsource/mediationsdk/AbstractSmash$MEDIATION_STATE;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/ironsource/mediationsdk/AbstractSmash$MEDIATION_STATE;

    return-object v0
.end method


# virtual methods
.method public getValue()I
    .locals 1

    .line 41
    iget v0, p0, Lcom/ironsource/mediationsdk/AbstractSmash$MEDIATION_STATE;->mValue:I

    return v0
.end method
