.class public final enum Lcom/iab/omid/library/ironsrc/adsession/ImpressionType;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/iab/omid/library/ironsrc/adsession/ImpressionType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/iab/omid/library/ironsrc/adsession/ImpressionType;

.field public static final enum AUDIBLE:Lcom/iab/omid/library/ironsrc/adsession/ImpressionType;

.field public static final enum BEGIN_TO_RENDER:Lcom/iab/omid/library/ironsrc/adsession/ImpressionType;

.field public static final enum DEFINED_BY_JAVASCRIPT:Lcom/iab/omid/library/ironsrc/adsession/ImpressionType;

.field public static final enum LOADED:Lcom/iab/omid/library/ironsrc/adsession/ImpressionType;

.field public static final enum ONE_PIXEL:Lcom/iab/omid/library/ironsrc/adsession/ImpressionType;

.field public static final enum OTHER:Lcom/iab/omid/library/ironsrc/adsession/ImpressionType;

.field public static final enum UNSPECIFIED:Lcom/iab/omid/library/ironsrc/adsession/ImpressionType;

.field public static final enum VIEWABLE:Lcom/iab/omid/library/ironsrc/adsession/ImpressionType;


# instance fields
.field private final impressionType:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 11

    new-instance v0, Lcom/iab/omid/library/ironsrc/adsession/ImpressionType;

    const-string v1, "DEFINED_BY_JAVASCRIPT"

    const/4 v2, 0x0

    const-string v3, "definedByJavaScript"

    invoke-direct {v0, v1, v2, v3}, Lcom/iab/omid/library/ironsrc/adsession/ImpressionType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/iab/omid/library/ironsrc/adsession/ImpressionType;->DEFINED_BY_JAVASCRIPT:Lcom/iab/omid/library/ironsrc/adsession/ImpressionType;

    new-instance v0, Lcom/iab/omid/library/ironsrc/adsession/ImpressionType;

    const-string v1, "UNSPECIFIED"

    const/4 v3, 0x1

    const-string v4, "unspecified"

    invoke-direct {v0, v1, v3, v4}, Lcom/iab/omid/library/ironsrc/adsession/ImpressionType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/iab/omid/library/ironsrc/adsession/ImpressionType;->UNSPECIFIED:Lcom/iab/omid/library/ironsrc/adsession/ImpressionType;

    new-instance v0, Lcom/iab/omid/library/ironsrc/adsession/ImpressionType;

    const-string v1, "LOADED"

    const/4 v4, 0x2

    const-string v5, "loaded"

    invoke-direct {v0, v1, v4, v5}, Lcom/iab/omid/library/ironsrc/adsession/ImpressionType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/iab/omid/library/ironsrc/adsession/ImpressionType;->LOADED:Lcom/iab/omid/library/ironsrc/adsession/ImpressionType;

    new-instance v0, Lcom/iab/omid/library/ironsrc/adsession/ImpressionType;

    const-string v1, "BEGIN_TO_RENDER"

    const/4 v5, 0x3

    const-string v6, "beginToRender"

    invoke-direct {v0, v1, v5, v6}, Lcom/iab/omid/library/ironsrc/adsession/ImpressionType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/iab/omid/library/ironsrc/adsession/ImpressionType;->BEGIN_TO_RENDER:Lcom/iab/omid/library/ironsrc/adsession/ImpressionType;

    new-instance v0, Lcom/iab/omid/library/ironsrc/adsession/ImpressionType;

    const-string v1, "ONE_PIXEL"

    const/4 v6, 0x4

    const-string v7, "onePixel"

    invoke-direct {v0, v1, v6, v7}, Lcom/iab/omid/library/ironsrc/adsession/ImpressionType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/iab/omid/library/ironsrc/adsession/ImpressionType;->ONE_PIXEL:Lcom/iab/omid/library/ironsrc/adsession/ImpressionType;

    new-instance v0, Lcom/iab/omid/library/ironsrc/adsession/ImpressionType;

    const-string v1, "VIEWABLE"

    const/4 v7, 0x5

    const-string v8, "viewable"

    invoke-direct {v0, v1, v7, v8}, Lcom/iab/omid/library/ironsrc/adsession/ImpressionType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/iab/omid/library/ironsrc/adsession/ImpressionType;->VIEWABLE:Lcom/iab/omid/library/ironsrc/adsession/ImpressionType;

    new-instance v0, Lcom/iab/omid/library/ironsrc/adsession/ImpressionType;

    const-string v1, "AUDIBLE"

    const/4 v8, 0x6

    const-string v9, "audible"

    invoke-direct {v0, v1, v8, v9}, Lcom/iab/omid/library/ironsrc/adsession/ImpressionType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/iab/omid/library/ironsrc/adsession/ImpressionType;->AUDIBLE:Lcom/iab/omid/library/ironsrc/adsession/ImpressionType;

    new-instance v0, Lcom/iab/omid/library/ironsrc/adsession/ImpressionType;

    const-string v1, "OTHER"

    const/4 v9, 0x7

    const-string v10, "other"

    invoke-direct {v0, v1, v9, v10}, Lcom/iab/omid/library/ironsrc/adsession/ImpressionType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/iab/omid/library/ironsrc/adsession/ImpressionType;->OTHER:Lcom/iab/omid/library/ironsrc/adsession/ImpressionType;

    const/16 v1, 0x8

    new-array v1, v1, [Lcom/iab/omid/library/ironsrc/adsession/ImpressionType;

    sget-object v10, Lcom/iab/omid/library/ironsrc/adsession/ImpressionType;->DEFINED_BY_JAVASCRIPT:Lcom/iab/omid/library/ironsrc/adsession/ImpressionType;

    aput-object v10, v1, v2

    sget-object v2, Lcom/iab/omid/library/ironsrc/adsession/ImpressionType;->UNSPECIFIED:Lcom/iab/omid/library/ironsrc/adsession/ImpressionType;

    aput-object v2, v1, v3

    sget-object v2, Lcom/iab/omid/library/ironsrc/adsession/ImpressionType;->LOADED:Lcom/iab/omid/library/ironsrc/adsession/ImpressionType;

    aput-object v2, v1, v4

    sget-object v2, Lcom/iab/omid/library/ironsrc/adsession/ImpressionType;->BEGIN_TO_RENDER:Lcom/iab/omid/library/ironsrc/adsession/ImpressionType;

    aput-object v2, v1, v5

    sget-object v2, Lcom/iab/omid/library/ironsrc/adsession/ImpressionType;->ONE_PIXEL:Lcom/iab/omid/library/ironsrc/adsession/ImpressionType;

    aput-object v2, v1, v6

    sget-object v2, Lcom/iab/omid/library/ironsrc/adsession/ImpressionType;->VIEWABLE:Lcom/iab/omid/library/ironsrc/adsession/ImpressionType;

    aput-object v2, v1, v7

    sget-object v2, Lcom/iab/omid/library/ironsrc/adsession/ImpressionType;->AUDIBLE:Lcom/iab/omid/library/ironsrc/adsession/ImpressionType;

    aput-object v2, v1, v8

    aput-object v0, v1, v9

    sput-object v1, Lcom/iab/omid/library/ironsrc/adsession/ImpressionType;->$VALUES:[Lcom/iab/omid/library/ironsrc/adsession/ImpressionType;

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

    iput-object p3, p0, Lcom/iab/omid/library/ironsrc/adsession/ImpressionType;->impressionType:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/iab/omid/library/ironsrc/adsession/ImpressionType;
    .locals 1

    const-class v0, Lcom/iab/omid/library/ironsrc/adsession/ImpressionType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/iab/omid/library/ironsrc/adsession/ImpressionType;

    return-object p0
.end method

.method public static values()[Lcom/iab/omid/library/ironsrc/adsession/ImpressionType;
    .locals 1

    sget-object v0, Lcom/iab/omid/library/ironsrc/adsession/ImpressionType;->$VALUES:[Lcom/iab/omid/library/ironsrc/adsession/ImpressionType;

    invoke-virtual {v0}, [Lcom/iab/omid/library/ironsrc/adsession/ImpressionType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/iab/omid/library/ironsrc/adsession/ImpressionType;

    return-object v0
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/iab/omid/library/ironsrc/adsession/ImpressionType;->impressionType:Ljava/lang/String;

    return-object v0
.end method
