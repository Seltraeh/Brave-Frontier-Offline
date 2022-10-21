.class synthetic Lch/boye/httpclientandroidlib/entity/mime/HttpMultipart$1;
.super Ljava/lang/Object;
.source "HttpMultipart.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lch/boye/httpclientandroidlib/entity/mime/HttpMultipart;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$ch$boye$httpclientandroidlib$entity$mime$HttpMultipartMode:[I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 185
    invoke-static {}, Lch/boye/httpclientandroidlib/entity/mime/HttpMultipartMode;->values()[Lch/boye/httpclientandroidlib/entity/mime/HttpMultipartMode;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lch/boye/httpclientandroidlib/entity/mime/HttpMultipart$1;->$SwitchMap$ch$boye$httpclientandroidlib$entity$mime$HttpMultipartMode:[I

    :try_start_0
    sget-object v1, Lch/boye/httpclientandroidlib/entity/mime/HttpMultipartMode;->STRICT:Lch/boye/httpclientandroidlib/entity/mime/HttpMultipartMode;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :try_start_1
    sget-object v0, Lch/boye/httpclientandroidlib/entity/mime/HttpMultipart$1;->$SwitchMap$ch$boye$httpclientandroidlib$entity$mime$HttpMultipartMode:[I

    sget-object v1, Lch/boye/httpclientandroidlib/entity/mime/HttpMultipartMode;->BROWSER_COMPATIBLE:Lch/boye/httpclientandroidlib/entity/mime/HttpMultipartMode;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    return-void
.end method
