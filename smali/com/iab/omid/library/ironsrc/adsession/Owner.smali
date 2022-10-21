.class public final enum Lcom/iab/omid/library/ironsrc/adsession/Owner;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/iab/omid/library/ironsrc/adsession/Owner;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/iab/omid/library/ironsrc/adsession/Owner;

.field public static final enum JAVASCRIPT:Lcom/iab/omid/library/ironsrc/adsession/Owner;

.field public static final enum NATIVE:Lcom/iab/omid/library/ironsrc/adsession/Owner;

.field public static final enum NONE:Lcom/iab/omid/library/ironsrc/adsession/Owner;


# instance fields
.field private final owner:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    new-instance v0, Lcom/iab/omid/library/ironsrc/adsession/Owner;

    const-string v1, "NATIVE"

    const/4 v2, 0x0

    const-string v3, "native"

    invoke-direct {v0, v1, v2, v3}, Lcom/iab/omid/library/ironsrc/adsession/Owner;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/iab/omid/library/ironsrc/adsession/Owner;->NATIVE:Lcom/iab/omid/library/ironsrc/adsession/Owner;

    new-instance v0, Lcom/iab/omid/library/ironsrc/adsession/Owner;

    const-string v1, "JAVASCRIPT"

    const/4 v3, 0x1

    const-string v4, "javascript"

    invoke-direct {v0, v1, v3, v4}, Lcom/iab/omid/library/ironsrc/adsession/Owner;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/iab/omid/library/ironsrc/adsession/Owner;->JAVASCRIPT:Lcom/iab/omid/library/ironsrc/adsession/Owner;

    new-instance v0, Lcom/iab/omid/library/ironsrc/adsession/Owner;

    const-string v1, "NONE"

    const/4 v4, 0x2

    const-string v5, "none"

    invoke-direct {v0, v1, v4, v5}, Lcom/iab/omid/library/ironsrc/adsession/Owner;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/iab/omid/library/ironsrc/adsession/Owner;->NONE:Lcom/iab/omid/library/ironsrc/adsession/Owner;

    const/4 v1, 0x3

    new-array v1, v1, [Lcom/iab/omid/library/ironsrc/adsession/Owner;

    sget-object v5, Lcom/iab/omid/library/ironsrc/adsession/Owner;->NATIVE:Lcom/iab/omid/library/ironsrc/adsession/Owner;

    aput-object v5, v1, v2

    sget-object v2, Lcom/iab/omid/library/ironsrc/adsession/Owner;->JAVASCRIPT:Lcom/iab/omid/library/ironsrc/adsession/Owner;

    aput-object v2, v1, v3

    aput-object v0, v1, v4

    sput-object v1, Lcom/iab/omid/library/ironsrc/adsession/Owner;->$VALUES:[Lcom/iab/omid/library/ironsrc/adsession/Owner;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-object p3, p0, Lcom/iab/omid/library/ironsrc/adsession/Owner;->owner:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/iab/omid/library/ironsrc/adsession/Owner;
    .locals 1

    const-class v0, Lcom/iab/omid/library/ironsrc/adsession/Owner;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/iab/omid/library/ironsrc/adsession/Owner;

    return-object p0
.end method

.method public static values()[Lcom/iab/omid/library/ironsrc/adsession/Owner;
    .locals 1

    sget-object v0, Lcom/iab/omid/library/ironsrc/adsession/Owner;->$VALUES:[Lcom/iab/omid/library/ironsrc/adsession/Owner;

    invoke-virtual {v0}, [Lcom/iab/omid/library/ironsrc/adsession/Owner;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/iab/omid/library/ironsrc/adsession/Owner;

    return-object v0
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/iab/omid/library/ironsrc/adsession/Owner;->owner:Ljava/lang/String;

    return-object v0
.end method
