.class public final Lcom/tapjoy/internal/if;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:F

.field public b:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Ljava/lang/String;)Lcom/tapjoy/internal/if;
    .locals 7

    .line 14
    invoke-static {p0}, Lcom/tapjoy/internal/ju;->c(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return-object v1

    .line 19
    :cond_0
    :try_start_0
    new-instance v0, Lcom/tapjoy/internal/if;

    invoke-direct {v0}, Lcom/tapjoy/internal/if;-><init>()V

    .line 21
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v3, 0x1

    sub-int/2addr v2, v3

    .line 22
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v4

    const/16 v5, 0x77

    const/4 v6, 0x0

    if-ne v4, v5, :cond_1

    .line 25
    invoke-virtual {p0, v6, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Float;->floatValue()F

    move-result p0

    iput p0, v0, Lcom/tapjoy/internal/if;->a:F

    .line 26
    iput v3, v0, Lcom/tapjoy/internal/if;->b:I

    goto :goto_0

    :cond_1
    const/16 v3, 0x68

    if-ne v4, v3, :cond_2

    .line 28
    invoke-virtual {p0, v6, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Float;->floatValue()F

    move-result p0

    iput p0, v0, Lcom/tapjoy/internal/if;->a:F

    const/4 p0, 0x2

    .line 29
    iput p0, v0, Lcom/tapjoy/internal/if;->b:I

    goto :goto_0

    .line 31
    :cond_2
    invoke-static {p0}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Float;->floatValue()F

    move-result p0

    iput p0, v0, Lcom/tapjoy/internal/if;->a:F

    .line 32
    iput v6, v0, Lcom/tapjoy/internal/if;->b:I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-object v0

    :catch_0
    return-object v1
.end method


# virtual methods
.method public final a(FF)F
    .locals 3

    .line 42
    iget v0, p0, Lcom/tapjoy/internal/if;->b:I

    const/high16 v1, 0x42c80000    # 100.0f

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    .line 43
    iget p2, p0, Lcom/tapjoy/internal/if;->a:F

    mul-float p2, p2, p1

    div-float/2addr p2, v1

    return p2

    :cond_0
    const/4 p1, 0x2

    if-ne v0, p1, :cond_1

    .line 45
    iget p1, p0, Lcom/tapjoy/internal/if;->a:F

    mul-float p1, p1, p2

    div-float/2addr p1, v1

    return p1

    .line 46
    :cond_1
    iget p1, p0, Lcom/tapjoy/internal/if;->a:F

    return p1
.end method
