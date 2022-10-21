.class public final enum Lch/boye/httpclientandroidlib/entity/mime/HttpMultipartMode;
.super Ljava/lang/Enum;
.source "HttpMultipartMode.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lch/boye/httpclientandroidlib/entity/mime/HttpMultipartMode;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lch/boye/httpclientandroidlib/entity/mime/HttpMultipartMode;

.field public static final enum BROWSER_COMPATIBLE:Lch/boye/httpclientandroidlib/entity/mime/HttpMultipartMode;

.field public static final enum STRICT:Lch/boye/httpclientandroidlib/entity/mime/HttpMultipartMode;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 37
    new-instance v0, Lch/boye/httpclientandroidlib/entity/mime/HttpMultipartMode;

    const-string v1, "STRICT"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lch/boye/httpclientandroidlib/entity/mime/HttpMultipartMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lch/boye/httpclientandroidlib/entity/mime/HttpMultipartMode;->STRICT:Lch/boye/httpclientandroidlib/entity/mime/HttpMultipartMode;

    .line 39
    new-instance v0, Lch/boye/httpclientandroidlib/entity/mime/HttpMultipartMode;

    const-string v1, "BROWSER_COMPATIBLE"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lch/boye/httpclientandroidlib/entity/mime/HttpMultipartMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lch/boye/httpclientandroidlib/entity/mime/HttpMultipartMode;->BROWSER_COMPATIBLE:Lch/boye/httpclientandroidlib/entity/mime/HttpMultipartMode;

    const/4 v1, 0x2

    new-array v1, v1, [Lch/boye/httpclientandroidlib/entity/mime/HttpMultipartMode;

    .line 34
    sget-object v4, Lch/boye/httpclientandroidlib/entity/mime/HttpMultipartMode;->STRICT:Lch/boye/httpclientandroidlib/entity/mime/HttpMultipartMode;

    aput-object v4, v1, v2

    aput-object v0, v1, v3

    sput-object v1, Lch/boye/httpclientandroidlib/entity/mime/HttpMultipartMode;->$VALUES:[Lch/boye/httpclientandroidlib/entity/mime/HttpMultipartMode;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 34
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lch/boye/httpclientandroidlib/entity/mime/HttpMultipartMode;
    .locals 1

    .line 34
    const-class v0, Lch/boye/httpclientandroidlib/entity/mime/HttpMultipartMode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lch/boye/httpclientandroidlib/entity/mime/HttpMultipartMode;

    return-object p0
.end method

.method public static values()[Lch/boye/httpclientandroidlib/entity/mime/HttpMultipartMode;
    .locals 1

    .line 34
    sget-object v0, Lch/boye/httpclientandroidlib/entity/mime/HttpMultipartMode;->$VALUES:[Lch/boye/httpclientandroidlib/entity/mime/HttpMultipartMode;

    invoke-virtual {v0}, [Lch/boye/httpclientandroidlib/entity/mime/HttpMultipartMode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lch/boye/httpclientandroidlib/entity/mime/HttpMultipartMode;

    return-object v0
.end method
