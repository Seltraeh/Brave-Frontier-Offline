.class public Lcom/google/ads/conversiontracking/g$b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/ads/conversiontracking/g;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "b"
.end annotation


# instance fields
.field private final a:Ljava/lang/String;

.field private final b:Lcom/google/ads/conversiontracking/g$a;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/google/ads/conversiontracking/g$a;)V
    .locals 0

    .line 777
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 778
    iput-object p1, p0, Lcom/google/ads/conversiontracking/g$b;->a:Ljava/lang/String;

    .line 779
    iput-object p2, p0, Lcom/google/ads/conversiontracking/g$b;->b:Lcom/google/ads/conversiontracking/g$a;

    return-void
.end method

.method static synthetic a(Lcom/google/ads/conversiontracking/g$b;)Ljava/lang/String;
    .locals 0

    .line 772
    iget-object p0, p0, Lcom/google/ads/conversiontracking/g$b;->a:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic b(Lcom/google/ads/conversiontracking/g$b;)Lcom/google/ads/conversiontracking/g$a;
    .locals 0

    .line 772
    iget-object p0, p0, Lcom/google/ads/conversiontracking/g$b;->b:Lcom/google/ads/conversiontracking/g$a;

    return-object p0
.end method
