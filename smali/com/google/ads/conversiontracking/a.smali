.class public Lcom/google/ads/conversiontracking/a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/ads/conversiontracking/a$b;,
        Lcom/google/ads/conversiontracking/a$c;,
        Lcom/google/ads/conversiontracking/a$a;
    }
.end annotation


# instance fields
.field private a:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    new-instance v0, Lcom/google/ads/conversiontracking/a$a;

    invoke-direct {v0, p1}, Lcom/google/ads/conversiontracking/a$a;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/google/ads/conversiontracking/a;->a:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public a()Lcom/google/ads/conversiontracking/i$a;
    .locals 1

    .line 49
    :try_start_0
    iget-object v0, p0, Lcom/google/ads/conversiontracking/a;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/google/ads/conversiontracking/i;->a(Landroid/content/Context;)Lcom/google/ads/conversiontracking/i$a;

    move-result-object v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/google/ads/conversiontracking/j; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/google/ads/conversiontracking/k; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    const/4 v0, 0x0

    return-object v0
.end method
