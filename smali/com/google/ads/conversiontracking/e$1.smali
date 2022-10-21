.class Lcom/google/ads/conversiontracking/e$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/ads/conversiontracking/e;->a(Ljava/lang/String;Lcom/google/ads/conversiontracking/g$c;ZZZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/google/ads/conversiontracking/d;

.field final synthetic b:Lcom/google/ads/conversiontracking/e;


# direct methods
.method constructor <init>(Lcom/google/ads/conversiontracking/e;Lcom/google/ads/conversiontracking/d;)V
    .locals 0

    .line 89
    iput-object p1, p0, Lcom/google/ads/conversiontracking/e$1;->b:Lcom/google/ads/conversiontracking/e;

    iput-object p2, p0, Lcom/google/ads/conversiontracking/e$1;->a:Lcom/google/ads/conversiontracking/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 92
    iget-object v0, p0, Lcom/google/ads/conversiontracking/e$1;->b:Lcom/google/ads/conversiontracking/e;

    iget-object v1, p0, Lcom/google/ads/conversiontracking/e$1;->a:Lcom/google/ads/conversiontracking/d;

    invoke-virtual {v0, v1}, Lcom/google/ads/conversiontracking/e;->a(Lcom/google/ads/conversiontracking/d;)I

    return-void
.end method
