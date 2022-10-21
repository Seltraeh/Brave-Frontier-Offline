.class Lcom/moat/analytics/mobile/vng/z;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/moat/analytics/mobile/vng/z$a;,
        Lcom/moat/analytics/mobile/vng/z$b;,
        Lcom/moat/analytics/mobile/vng/z$c;
    }
.end annotation


# instance fields
.field a:Ljava/lang/String;

.field private b:Lcom/moat/analytics/mobile/vng/z$c;

.field private c:Lorg/json/JSONObject;

.field private d:Landroid/graphics/Rect;

.field private e:Landroid/graphics/Rect;

.field private f:Lorg/json/JSONObject;

.field private g:Lorg/json/JSONObject;

.field private h:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/moat/analytics/mobile/vng/z;->h:Ljava/util/Map;

    const-string v0, "{}"

    iput-object v0, p0, Lcom/moat/analytics/mobile/vng/z;->a:Ljava/lang/String;

    new-instance v0, Lcom/moat/analytics/mobile/vng/z$c;

    invoke-direct {v0}, Lcom/moat/analytics/mobile/vng/z$c;-><init>()V

    iput-object v0, p0, Lcom/moat/analytics/mobile/vng/z;->b:Lcom/moat/analytics/mobile/vng/z$c;

    return-void
.end method

.method static a(Landroid/graphics/Rect;Ljava/util/Set;)I
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/graphics/Rect;",
            "Ljava/util/Set<",
            "Landroid/graphics/Rect;",
            ">;)I"
        }
    .end annotation

    invoke-interface {p1}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_6

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    new-instance p1, Lcom/moat/analytics/mobile/vng/z$1;

    invoke-direct {p1}, Lcom/moat/analytics/mobile/vng/z$1;-><init>()V

    invoke-static {v0, p1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/graphics/Rect;

    iget v4, v3, Landroid/graphics/Rect;->left:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {p1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget v3, v3, Landroid/graphics/Rect;->right:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {p1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    invoke-static {p1}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    const/4 v2, 0x0

    :goto_1
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    if-ge v1, v3, :cond_5

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    add-int/lit8 v4, v1, 0x1

    invoke-interface {p1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    goto :goto_2

    :cond_1
    new-instance v3, Landroid/graphics/Rect;

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iget v5, p0, Landroid/graphics/Rect;->top:I

    invoke-interface {p1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    iget v7, p0, Landroid/graphics/Rect;->bottom:I

    invoke-direct {v3, v1, v5, v6, v7}, Landroid/graphics/Rect;-><init>(IIII)V

    iget v1, p0, Landroid/graphics/Rect;->top:I

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_2
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_4

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/graphics/Rect;

    invoke-static {v6, v3}, Landroid/graphics/Rect;->intersects(Landroid/graphics/Rect;Landroid/graphics/Rect;)Z

    move-result v7

    if-eqz v7, :cond_2

    iget v7, v6, Landroid/graphics/Rect;->bottom:I

    if-le v7, v1, :cond_3

    invoke-virtual {v3}, Landroid/graphics/Rect;->width()I

    move-result v7

    iget v8, v6, Landroid/graphics/Rect;->bottom:I

    iget v9, v6, Landroid/graphics/Rect;->top:I

    invoke-static {v1, v9}, Ljava/lang/Math;->max(II)I

    move-result v1

    sub-int/2addr v8, v1

    mul-int v7, v7, v8

    add-int/2addr v2, v7

    iget v1, v6, Landroid/graphics/Rect;->bottom:I

    :cond_3
    iget v6, v6, Landroid/graphics/Rect;->bottom:I

    iget v7, v3, Landroid/graphics/Rect;->bottom:I

    if-ne v6, v7, :cond_2

    :cond_4
    :goto_2
    move v1, v4

    goto :goto_1

    :cond_5
    move v1, v2

    :cond_6
    return v1
.end method

.method private static a(Landroid/util/DisplayMetrics;)Landroid/graphics/Rect;
    .locals 3

    iget v0, p0, Landroid/util/DisplayMetrics;->widthPixels:I

    iget p0, p0, Landroid/util/DisplayMetrics;->heightPixels:I

    new-instance v1, Landroid/graphics/Rect;

    const/4 v2, 0x0

    invoke-direct {v1, v2, v2, v0, p0}, Landroid/graphics/Rect;-><init>(IIII)V

    return-object v1
.end method

.method static a(Landroid/view/View;)Landroid/graphics/Rect;
    .locals 1

    if-eqz p0, :cond_0

    invoke-static {p0}, Lcom/moat/analytics/mobile/vng/z;->k(Landroid/view/View;)Landroid/graphics/Rect;

    move-result-object p0

    goto :goto_0

    :cond_0
    new-instance p0, Landroid/graphics/Rect;

    const/4 v0, 0x0

    invoke-direct {p0, v0, v0, v0, v0}, Landroid/graphics/Rect;-><init>(IIII)V

    :goto_0
    return-object p0
.end method

.method static synthetic a(Landroid/view/View;II)Landroid/graphics/Rect;
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/moat/analytics/mobile/vng/z;->b(Landroid/view/View;II)Landroid/graphics/Rect;

    move-result-object p0

    return-object p0
.end method

.method static a(Landroid/graphics/Rect;Landroid/view/View;)Lcom/moat/analytics/mobile/vng/z$a;
    .locals 13

    const-string v0, "VisibilityInfo"

    new-instance v1, Lcom/moat/analytics/mobile/vng/z$a;

    invoke-direct {v1}, Lcom/moat/analytics/mobile/vng/z$a;-><init>()V

    :try_start_0
    invoke-static {p1}, Lcom/moat/analytics/mobile/vng/z;->i(Landroid/view/View;)Ljava/util/ArrayDeque;

    move-result-object v2

    if-eqz v2, :cond_6

    invoke-virtual {v2}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_0

    goto/16 :goto_4

    :cond_0
    const/4 v3, 0x2

    const-string v4, "starting covering rect search"

    invoke-static {v3, v0, p1, v4}, Lcom/moat/analytics/mobile/vng/p;->b(ILjava/lang/String;Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p1, 0x0

    move-object v3, p1

    :goto_0
    invoke-virtual {v2}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_7

    invoke-virtual {v2}, Ljava/util/ArrayDeque;->pollLast()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/View;

    new-instance v5, Lcom/moat/analytics/mobile/vng/z$b;

    invoke-direct {v5, v4, v3}, Lcom/moat/analytics/mobile/vng/z$b;-><init>(Landroid/view/View;Lcom/moat/analytics/mobile/vng/z$b;)V

    invoke-virtual {v4}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v6

    if-nez v6, :cond_1

    goto :goto_3

    :cond_1
    invoke-virtual {v4}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v6

    instance-of v6, v6, Landroid/view/ViewGroup;

    if-eqz v6, :cond_5

    invoke-virtual {v4}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v6

    check-cast v6, Landroid/view/ViewGroup;

    invoke-virtual {v6}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v7

    const/4 v8, 0x0

    const/4 v9, 0x0

    :goto_1
    if-ge v8, v7, :cond_5

    iget v10, v1, Lcom/moat/analytics/mobile/vng/z$a;->a:I

    const/16 v11, 0x1f4

    if-lt v10, v11, :cond_2

    const/4 p0, 0x3

    const-string v2, "Short-circuiting cover retrieval, reached max"

    invoke-static {p0, v0, p1, v2}, Lcom/moat/analytics/mobile/vng/p;->a(ILjava/lang/String;Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_5

    :cond_2
    invoke-virtual {v6, v8}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v10

    const/4 v11, 0x1

    if-ne v10, v4, :cond_3

    const/4 v9, 0x1

    goto :goto_2

    :cond_3
    iget v12, v1, Lcom/moat/analytics/mobile/vng/z$a;->a:I

    add-int/2addr v12, v11

    iput v12, v1, Lcom/moat/analytics/mobile/vng/z$a;->a:I

    invoke-static {v10, v4, v9}, Lcom/moat/analytics/mobile/vng/z;->a(Landroid/view/View;Landroid/view/View;Z)Z

    move-result v11

    if-eqz v11, :cond_4

    new-instance v11, Lcom/moat/analytics/mobile/vng/z$b;

    invoke-direct {v11, v10, v3}, Lcom/moat/analytics/mobile/vng/z$b;-><init>(Landroid/view/View;Lcom/moat/analytics/mobile/vng/z$b;)V

    invoke-static {v11, p0, v1}, Lcom/moat/analytics/mobile/vng/z;->b(Lcom/moat/analytics/mobile/vng/z$b;Landroid/graphics/Rect;Lcom/moat/analytics/mobile/vng/z$a;)V

    iget-boolean v10, v1, Lcom/moat/analytics/mobile/vng/z$a;->c:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v10, :cond_4

    return-object v1

    :cond_4
    :goto_2
    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    :cond_5
    :goto_3
    move-object v3, v5

    goto :goto_0

    :cond_6
    :goto_4
    return-object v1

    :catch_0
    move-exception p0

    invoke-static {p0}, Lcom/moat/analytics/mobile/vng/n;->a(Ljava/lang/Exception;)V

    :cond_7
    :goto_5
    return-object v1
.end method

.method private static a(Landroid/view/View;Landroid/graphics/Rect;ZZZ)Lcom/moat/analytics/mobile/vng/z$c;
    .locals 7

    new-instance v0, Lcom/moat/analytics/mobile/vng/z$c;

    invoke-direct {v0}, Lcom/moat/analytics/mobile/vng/z$c;-><init>()V

    invoke-static {p1}, Lcom/moat/analytics/mobile/vng/z;->b(Landroid/graphics/Rect;)I

    move-result p1

    if-eqz p0, :cond_3

    if-eqz p2, :cond_3

    if-eqz p3, :cond_3

    if-nez p4, :cond_3

    if-lez p1, :cond_3

    new-instance p2, Landroid/graphics/Rect;

    const/4 p3, 0x0

    invoke-direct {p2, p3, p3, p3, p3}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-static {p0, p2}, Lcom/moat/analytics/mobile/vng/z;->a(Landroid/view/View;Landroid/graphics/Rect;)Z

    move-result p3

    if-eqz p3, :cond_3

    invoke-static {p2}, Lcom/moat/analytics/mobile/vng/z;->b(Landroid/graphics/Rect;)I

    move-result p3

    if-ge p3, p1, :cond_0

    const/4 p4, 0x2

    const/4 v1, 0x0

    const-string v2, "VisibilityInfo"

    const-string v3, "Ad is clipped"

    invoke-static {p4, v2, v1, v3}, Lcom/moat/analytics/mobile/vng/p;->b(ILjava/lang/String;Ljava/lang/Object;Ljava/lang/String;)V

    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object p4

    instance-of p4, p4, Landroid/view/ViewGroup;

    if-eqz p4, :cond_3

    iput-object p2, v0, Lcom/moat/analytics/mobile/vng/z$c;->a:Landroid/graphics/Rect;

    invoke-static {p2, p0}, Lcom/moat/analytics/mobile/vng/z;->a(Landroid/graphics/Rect;Landroid/view/View;)Lcom/moat/analytics/mobile/vng/z$a;

    move-result-object p0

    iget-boolean p4, p0, Lcom/moat/analytics/mobile/vng/z$a;->c:Z

    const-wide/high16 v1, 0x3ff0000000000000L    # 1.0

    if-eqz p4, :cond_1

    iput-wide v1, v0, Lcom/moat/analytics/mobile/vng/z$c;->c:D

    goto :goto_0

    :cond_1
    iget-object p0, p0, Lcom/moat/analytics/mobile/vng/z$a;->b:Ljava/util/Set;

    invoke-static {p2, p0}, Lcom/moat/analytics/mobile/vng/z;->a(Landroid/graphics/Rect;Ljava/util/Set;)I

    move-result p0

    if-lez p0, :cond_2

    int-to-double v3, p0

    int-to-double v5, p3

    invoke-static {v5, v6}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v5, v5, v1

    invoke-static {v3, v4}, Ljava/lang/Double;->isNaN(D)Z

    div-double/2addr v3, v5

    iput-wide v3, v0, Lcom/moat/analytics/mobile/vng/z$c;->c:D

    :cond_2
    sub-int/2addr p3, p0

    int-to-double p2, p3

    int-to-double p0, p1

    invoke-static {p0, p1}, Ljava/lang/Double;->isNaN(D)Z

    mul-double p0, p0, v1

    invoke-static {p2, p3}, Ljava/lang/Double;->isNaN(D)Z

    div-double/2addr p2, p0

    iput-wide p2, v0, Lcom/moat/analytics/mobile/vng/z$c;->b:D

    :cond_3
    :goto_0
    return-object v0
.end method

.method private static a(Landroid/graphics/Rect;)Ljava/util/Map;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/graphics/Rect;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iget v1, p0, Landroid/graphics/Rect;->left:I

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "x"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget v1, p0, Landroid/graphics/Rect;->top:I

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "y"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget v1, p0, Landroid/graphics/Rect;->right:I

    iget v2, p0, Landroid/graphics/Rect;->left:I

    sub-int/2addr v1, v2

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "w"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget v1, p0, Landroid/graphics/Rect;->bottom:I

    iget p0, p0, Landroid/graphics/Rect;->top:I

    sub-int/2addr v1, p0

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p0

    const-string v1, "h"

    invoke-interface {v0, v1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method

.method private static a(Landroid/graphics/Rect;Landroid/util/DisplayMetrics;)Ljava/util/Map;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/graphics/Rect;",
            "Landroid/util/DisplayMetrics;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    invoke-static {p0, p1}, Lcom/moat/analytics/mobile/vng/z;->b(Landroid/graphics/Rect;Landroid/util/DisplayMetrics;)Landroid/graphics/Rect;

    move-result-object p0

    invoke-static {p0}, Lcom/moat/analytics/mobile/vng/z;->a(Landroid/graphics/Rect;)Ljava/util/Map;

    move-result-object p0

    return-object p0
.end method

.method private static a(Lcom/moat/analytics/mobile/vng/z$b;Landroid/graphics/Rect;Lcom/moat/analytics/mobile/vng/z$a;)V
    .locals 7

    iget-object v0, p0, Lcom/moat/analytics/mobile/vng/z$b;->b:Landroid/graphics/Rect;

    invoke-virtual {v0, p1, v0}, Landroid/graphics/Rect;->setIntersect(Landroid/graphics/Rect;Landroid/graphics/Rect;)Z

    move-result v1

    if-eqz v1, :cond_4

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x16

    const/4 v3, 0x0

    if-lt v1, v2, :cond_2

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0, v3, v3, v3, v3}, Landroid/graphics/Rect;-><init>(IIII)V

    iget-object v1, p0, Lcom/moat/analytics/mobile/vng/z$b;->a:Landroid/view/View;

    invoke-static {v1, v0}, Lcom/moat/analytics/mobile/vng/z;->a(Landroid/view/View;Landroid/graphics/Rect;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/moat/analytics/mobile/vng/z$b;->b:Landroid/graphics/Rect;

    invoke-virtual {v1, v0, v1}, Landroid/graphics/Rect;->setIntersect(Landroid/graphics/Rect;Landroid/graphics/Rect;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    move-object v0, v1

    goto :goto_0

    :cond_1
    return-void

    :cond_2
    :goto_0
    invoke-static {}, Lcom/moat/analytics/mobile/vng/w;->a()Lcom/moat/analytics/mobile/vng/w;

    move-result-object v1

    iget-boolean v1, v1, Lcom/moat/analytics/mobile/vng/w;->c:Z

    const/4 v2, 0x1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/moat/analytics/mobile/vng/z$b;->a:Landroid/view/View;

    sget-object v4, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    const/4 v5, 0x3

    new-array v5, v5, [Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v3

    invoke-virtual {v0}, Landroid/graphics/Rect;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v5, v2

    iget-object p0, p0, Lcom/moat/analytics/mobile/vng/z$b;->a:Landroid/view/View;

    invoke-virtual {p0}, Landroid/view/View;->getAlpha()F

    move-result p0

    invoke-static {p0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p0

    const/4 v3, 0x2

    aput-object p0, v5, v3

    const-string p0, "Covered by %s-%s alpha=%f"

    invoke-static {v4, p0, v5}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    const-string v4, "VisibilityInfo"

    invoke-static {v3, v4, v1, p0}, Lcom/moat/analytics/mobile/vng/p;->b(ILjava/lang/String;Ljava/lang/Object;Ljava/lang/String;)V

    :cond_3
    iget-object p0, p2, Lcom/moat/analytics/mobile/vng/z$a;->b:Ljava/util/Set;

    invoke-interface {p0, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    invoke-virtual {v0, p1}, Landroid/graphics/Rect;->contains(Landroid/graphics/Rect;)Z

    move-result p0

    if-eqz p0, :cond_4

    iput-boolean v2, p2, Lcom/moat/analytics/mobile/vng/z$a;->c:Z

    :cond_4
    return-void
.end method

.method private static a(Landroid/view/View;Landroid/graphics/Rect;)Z
    .locals 3

    invoke-virtual {p0, p1}, Landroid/view/View;->getGlobalVisibleRect(Landroid/graphics/Rect;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const/4 v0, 0x2

    new-array v2, v0, [I

    fill-array-data v2, :array_0

    invoke-virtual {p0, v2}, Landroid/view/View;->getLocationInWindow([I)V

    new-array v0, v0, [I

    fill-array-data v0, :array_1

    invoke-virtual {p0, v0}, Landroid/view/View;->getLocationOnScreen([I)V

    aget p0, v0, v1

    aget v1, v2, v1

    sub-int/2addr p0, v1

    const/4 v1, 0x1

    aget v0, v0, v1

    aget v2, v2, v1

    sub-int/2addr v0, v2

    invoke-virtual {p1, p0, v0}, Landroid/graphics/Rect;->offset(II)V

    :cond_0
    return v1

    nop

    :array_0
    .array-data 4
        -0x80000000
        -0x80000000
    .end array-data

    :array_1
    .array-data 4
        -0x80000000
        -0x80000000
    .end array-data
.end method

.method private static a(Landroid/view/View;Landroid/view/View;Z)Z
    .locals 3

    const/4 v0, 0x1

    const/4 v1, 0x0

    const/16 v2, 0x15

    if-eqz p2, :cond_2

    sget p2, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt p2, v2, :cond_1

    invoke-virtual {p0}, Landroid/view/View;->getZ()F

    move-result p0

    invoke-virtual {p1}, Landroid/view/View;->getZ()F

    move-result p1

    cmpl-float p0, p0, p1

    if-ltz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :cond_1
    :goto_0
    return v0

    :cond_2
    sget p2, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt p2, v2, :cond_3

    invoke-virtual {p0}, Landroid/view/View;->getZ()F

    move-result p0

    invoke-virtual {p1}, Landroid/view/View;->getZ()F

    move-result p1

    cmpl-float p0, p0, p1

    if-lez p0, :cond_3

    goto :goto_1

    :cond_3
    const/4 v0, 0x0

    :goto_1
    return v0
.end method

.method private static b(Landroid/graphics/Rect;)I
    .locals 1

    invoke-virtual {p0}, Landroid/graphics/Rect;->width()I

    move-result v0

    invoke-virtual {p0}, Landroid/graphics/Rect;->height()I

    move-result p0

    mul-int v0, v0, p0

    return v0
.end method

.method private static b(Landroid/graphics/Rect;Landroid/util/DisplayMetrics;)Landroid/graphics/Rect;
    .locals 3

    iget p1, p1, Landroid/util/DisplayMetrics;->density:F

    const/4 v0, 0x0

    cmpl-float v0, p1, v0

    if-nez v0, :cond_0

    return-object p0

    :cond_0
    iget v0, p0, Landroid/graphics/Rect;->left:I

    int-to-float v0, v0

    div-float/2addr v0, p1

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    iget v1, p0, Landroid/graphics/Rect;->right:I

    int-to-float v1, v1

    div-float/2addr v1, p1

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    iget v2, p0, Landroid/graphics/Rect;->top:I

    int-to-float v2, v2

    div-float/2addr v2, p1

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    iget p0, p0, Landroid/graphics/Rect;->bottom:I

    int-to-float p0, p0

    div-float/2addr p0, p1

    invoke-static {p0}, Ljava/lang/Math;->round(F)I

    move-result p0

    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1, v0, v2, v1, p0}, Landroid/graphics/Rect;-><init>(IIII)V

    return-object p1
.end method

.method static synthetic b(Landroid/view/View;)Landroid/graphics/Rect;
    .locals 0

    invoke-static {p0}, Lcom/moat/analytics/mobile/vng/z;->k(Landroid/view/View;)Landroid/graphics/Rect;

    move-result-object p0

    return-object p0
.end method

.method private static b(Landroid/view/View;II)Landroid/graphics/Rect;
    .locals 2

    invoke-virtual {p0}, Landroid/view/View;->getLeft()I

    move-result v0

    add-int/2addr p1, v0

    invoke-virtual {p0}, Landroid/view/View;->getTop()I

    move-result v0

    add-int/2addr p2, v0

    new-instance v0, Landroid/graphics/Rect;

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v1

    add-int/2addr v1, p1

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result p0

    add-int/2addr p0, p2

    invoke-direct {v0, p1, p2, v1, p0}, Landroid/graphics/Rect;-><init>(IIII)V

    return-object v0
.end method

.method private static b(Lcom/moat/analytics/mobile/vng/z$b;Landroid/graphics/Rect;Lcom/moat/analytics/mobile/vng/z$a;)V
    .locals 7

    iget-object v0, p0, Lcom/moat/analytics/mobile/vng/z$b;->a:Landroid/view/View;

    invoke-static {v0}, Lcom/moat/analytics/mobile/vng/z;->h(Landroid/view/View;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/moat/analytics/mobile/vng/z$b;->a:Landroid/view/View;

    instance-of v1, v0, Landroid/view/ViewGroup;

    const/4 v2, 0x1

    if-eqz v1, :cond_5

    const-class v1, Landroid/view/ViewGroup;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    iget-object v1, p0, Lcom/moat/analytics/mobile/vng/z$b;->a:Landroid/view/View;

    invoke-static {v1}, Lcom/moat/analytics/mobile/vng/z;->j(Landroid/view/View;)Z

    move-result v1

    const/4 v3, 0x0

    if-eqz v0, :cond_1

    if-eqz v1, :cond_1

    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    const/4 v0, 0x1

    :goto_0
    iget-object v1, p0, Lcom/moat/analytics/mobile/vng/z$b;->a:Landroid/view/View;

    check-cast v1, Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v4

    :goto_1
    if-ge v3, v4, :cond_4

    iget v5, p2, Lcom/moat/analytics/mobile/vng/z$a;->a:I

    add-int/2addr v5, v2

    iput v5, p2, Lcom/moat/analytics/mobile/vng/z$a;->a:I

    const/16 v6, 0x1f4

    if-le v5, v6, :cond_2

    return-void

    :cond_2
    new-instance v5, Lcom/moat/analytics/mobile/vng/z$b;

    invoke-virtual {v1, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    invoke-direct {v5, v6, p0}, Lcom/moat/analytics/mobile/vng/z$b;-><init>(Landroid/view/View;Lcom/moat/analytics/mobile/vng/z$b;)V

    invoke-static {v5, p1, p2}, Lcom/moat/analytics/mobile/vng/z;->b(Lcom/moat/analytics/mobile/vng/z$b;Landroid/graphics/Rect;Lcom/moat/analytics/mobile/vng/z$a;)V

    iget-boolean v5, p2, Lcom/moat/analytics/mobile/vng/z$a;->c:Z

    if-eqz v5, :cond_3

    return-void

    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_4
    move v2, v0

    :cond_5
    if-eqz v2, :cond_6

    invoke-static {p0, p1, p2}, Lcom/moat/analytics/mobile/vng/z;->a(Lcom/moat/analytics/mobile/vng/z$b;Landroid/graphics/Rect;Lcom/moat/analytics/mobile/vng/z$a;)V

    :cond_6
    return-void
.end method

.method private static c(Landroid/view/View;)Z
    .locals 4

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/16 v3, 0x13

    if-lt v0, v3, :cond_1

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->isAttachedToWindow()Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1

    :cond_1
    if-eqz p0, :cond_2

    invoke-virtual {p0}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object p0

    if-eqz p0, :cond_2

    goto :goto_1

    :cond_2
    const/4 v1, 0x0

    :goto_1
    return v1
.end method

.method private static d(Landroid/view/View;)Z
    .locals 0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->hasWindowFocus()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private static e(Landroid/view/View;)Z
    .locals 0

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Landroid/view/View;->isShown()Z

    move-result p0

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method private static f(Landroid/view/View;)F
    .locals 0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    invoke-static {p0}, Lcom/moat/analytics/mobile/vng/z;->g(Landroid/view/View;)F

    move-result p0

    :goto_0
    return p0
.end method

.method private static g(Landroid/view/View;)F
    .locals 6

    invoke-virtual {p0}, Landroid/view/View;->getAlpha()F

    move-result v0

    :goto_0
    if-eqz p0, :cond_1

    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    if-eqz v1, :cond_1

    float-to-double v1, v0

    const-wide/16 v3, 0x0

    cmpl-double v5, v1, v3

    if-nez v5, :cond_0

    goto :goto_1

    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    instance-of v1, v1, Landroid/view/View;

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getAlpha()F

    move-result v1

    mul-float v0, v0, v1

    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p0

    check-cast p0, Landroid/view/View;

    goto :goto_0

    :cond_1
    :goto_1
    return v0
.end method

.method private static h(Landroid/view/View;)Z
    .locals 4

    invoke-virtual {p0}, Landroid/view/View;->isShown()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->getAlpha()F

    move-result p0

    float-to-double v0, p0

    const-wide/16 v2, 0x0

    cmpl-double p0, v0, v2

    if-lez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private static i(Landroid/view/View;)Ljava/util/ArrayDeque;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            ")",
            "Ljava/util/ArrayDeque<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayDeque;

    invoke-direct {v0}, Ljava/util/ArrayDeque;-><init>()V

    const/4 v1, 0x0

    move-object v2, p0

    :goto_0
    invoke-virtual {v2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    if-nez v3, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v3

    if-ne v2, v3, :cond_2

    :cond_0
    add-int/lit8 v1, v1, 0x1

    const/16 v3, 0x32

    if-le v1, v3, :cond_1

    const/4 p0, 0x3

    const/4 v1, 0x0

    const-string v2, "VisibilityInfo"

    const-string v3, "Short-circuiting chain retrieval, reached max"

    invoke-static {p0, v2, v1, v3}, Lcom/moat/analytics/mobile/vng/p;->a(ILjava/lang/String;Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_1

    :cond_1
    invoke-virtual {v0, v2}, Ljava/util/ArrayDeque;->add(Ljava/lang/Object;)Z

    invoke-virtual {v2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    instance-of v3, v3, Landroid/view/View;

    if-eqz v3, :cond_2

    invoke-virtual {v2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    goto :goto_0

    :cond_2
    :goto_1
    return-object v0
.end method

.method private static j(Landroid/view/View;)Z
    .locals 3

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v1, 0x1

    const/16 v2, 0x13

    if-lt v0, v2, :cond_1

    invoke-virtual {p0}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object p0

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getAlpha()I

    move-result p0

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :cond_1
    :goto_0
    return v1
.end method

.method private static k(Landroid/view/View;)Landroid/graphics/Rect;
    .locals 4

    const/4 v0, 0x2

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    invoke-virtual {p0, v0}, Landroid/view/View;->getLocationOnScreen([I)V

    const/4 v1, 0x0

    aget v1, v0, v1

    const/4 v2, 0x1

    aget v0, v0, v2

    new-instance v2, Landroid/graphics/Rect;

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v3

    add-int/2addr v3, v1

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result p0

    add-int/2addr p0, v0

    invoke-direct {v2, v1, v0, v3, p0}, Landroid/graphics/Rect;-><init>(IIII)V

    return-object v2

    nop

    :array_0
    .array-data 4
        -0x80000000
        -0x80000000
    .end array-data
.end method

.method private static l(Landroid/view/View;)Landroid/util/DisplayMetrics;
    .locals 2

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x11

    if-lt v0, v1, :cond_0

    sget-object v0, Lcom/moat/analytics/mobile/vng/a;->a:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    if-eqz v0, :cond_0

    new-instance p0, Landroid/util/DisplayMetrics;

    invoke-direct {p0}, Landroid/util/DisplayMetrics;-><init>()V

    invoke-virtual {v0}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/Display;->getRealMetrics(Landroid/util/DisplayMetrics;)V

    return-object p0

    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method a(Ljava/lang/String;Landroid/view/View;)V
    .locals 11

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "{}"

    if-eqz p2, :cond_b

    :try_start_0
    invoke-static {p2}, Lcom/moat/analytics/mobile/vng/z;->l(Landroid/view/View;)Landroid/util/DisplayMetrics;

    move-result-object v2

    invoke-static {p2}, Lcom/moat/analytics/mobile/vng/z;->c(Landroid/view/View;)Z

    move-result v3

    invoke-static {p2}, Lcom/moat/analytics/mobile/vng/z;->d(Landroid/view/View;)Z

    move-result v4

    invoke-static {p2}, Lcom/moat/analytics/mobile/vng/z;->e(Landroid/view/View;)Z

    move-result v5

    invoke-static {p2}, Lcom/moat/analytics/mobile/vng/z;->f(Landroid/view/View;)F

    move-result v6

    const-string v7, "dr"

    iget v8, v2, Landroid/util/DisplayMetrics;->density:F

    invoke-static {v8}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v8

    invoke-interface {v0, v7, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v7, "dv"

    invoke-static {}, Lcom/moat/analytics/mobile/vng/l;->a()Lcom/moat/analytics/mobile/vng/l;

    move-result-object v8

    invoke-virtual {v8}, Lcom/moat/analytics/mobile/vng/l;->b()D

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v8

    invoke-interface {v0, v7, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v7, "adKey"

    invoke-interface {v0, v7, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "isAttached"

    const/4 v7, 0x0

    const/4 v8, 0x1

    if-eqz v3, :cond_0

    const/4 v9, 0x1

    goto :goto_0

    :cond_0
    const/4 v9, 0x0

    :goto_0
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-interface {v0, p1, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "inFocus"

    if-eqz v4, :cond_1

    const/4 v9, 0x1

    goto :goto_1

    :cond_1
    const/4 v9, 0x0

    :goto_1
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-interface {v0, p1, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "isHidden"

    if-eqz v5, :cond_2

    const/4 v9, 0x1

    goto :goto_2

    :cond_2
    const/4 v9, 0x0

    :goto_2
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-interface {v0, p1, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "opacity"

    invoke-static {v6}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v6

    invoke-interface {v0, p1, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v2}, Lcom/moat/analytics/mobile/vng/z;->a(Landroid/util/DisplayMetrics;)Landroid/graphics/Rect;

    move-result-object p1

    invoke-static {p2}, Lcom/moat/analytics/mobile/vng/z;->a(Landroid/view/View;)Landroid/graphics/Rect;

    move-result-object v6

    invoke-static {p2, v6, v3, v4, v5}, Lcom/moat/analytics/mobile/vng/z;->a(Landroid/view/View;Landroid/graphics/Rect;ZZZ)Lcom/moat/analytics/mobile/vng/z$c;

    move-result-object p2

    iget-object v3, p0, Lcom/moat/analytics/mobile/vng/z;->c:Lorg/json/JSONObject;

    if-eqz v3, :cond_3

    iget-wide v3, p2, Lcom/moat/analytics/mobile/vng/z$c;->b:D

    iget-object v5, p0, Lcom/moat/analytics/mobile/vng/z;->b:Lcom/moat/analytics/mobile/vng/z$c;

    iget-wide v9, v5, Lcom/moat/analytics/mobile/vng/z$c;->b:D

    cmpl-double v5, v3, v9

    if-nez v5, :cond_3

    iget-object v3, p2, Lcom/moat/analytics/mobile/vng/z$c;->a:Landroid/graphics/Rect;

    iget-object v4, p0, Lcom/moat/analytics/mobile/vng/z;->b:Lcom/moat/analytics/mobile/vng/z$c;

    iget-object v4, v4, Lcom/moat/analytics/mobile/vng/z$c;->a:Landroid/graphics/Rect;

    invoke-virtual {v3, v4}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    iget-wide v3, p2, Lcom/moat/analytics/mobile/vng/z$c;->c:D

    iget-object v5, p0, Lcom/moat/analytics/mobile/vng/z;->b:Lcom/moat/analytics/mobile/vng/z$c;

    iget-wide v9, v5, Lcom/moat/analytics/mobile/vng/z$c;->c:D

    cmpl-double v5, v3, v9

    if-eqz v5, :cond_4

    :cond_3
    iput-object p2, p0, Lcom/moat/analytics/mobile/vng/z;->b:Lcom/moat/analytics/mobile/vng/z$c;

    new-instance v3, Lorg/json/JSONObject;

    iget-object v4, p0, Lcom/moat/analytics/mobile/vng/z;->b:Lcom/moat/analytics/mobile/vng/z$c;

    iget-object v4, v4, Lcom/moat/analytics/mobile/vng/z$c;->a:Landroid/graphics/Rect;

    invoke-static {v4, v2}, Lcom/moat/analytics/mobile/vng/z;->a(Landroid/graphics/Rect;Landroid/util/DisplayMetrics;)Ljava/util/Map;

    move-result-object v4

    invoke-direct {v3, v4}, Lorg/json/JSONObject;-><init>(Ljava/util/Map;)V

    iput-object v3, p0, Lcom/moat/analytics/mobile/vng/z;->c:Lorg/json/JSONObject;

    const/4 v7, 0x1

    :cond_4
    const-string v3, "coveredPercent"

    iget-wide v4, p2, Lcom/moat/analytics/mobile/vng/z$c;->c:D

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p2

    invoke-interface {v0, v3, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p2, p0, Lcom/moat/analytics/mobile/vng/z;->g:Lorg/json/JSONObject;

    if-eqz p2, :cond_5

    iget-object p2, p0, Lcom/moat/analytics/mobile/vng/z;->e:Landroid/graphics/Rect;

    invoke-virtual {p1, p2}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_6

    :cond_5
    iput-object p1, p0, Lcom/moat/analytics/mobile/vng/z;->e:Landroid/graphics/Rect;

    new-instance p2, Lorg/json/JSONObject;

    invoke-static {p1, v2}, Lcom/moat/analytics/mobile/vng/z;->a(Landroid/graphics/Rect;Landroid/util/DisplayMetrics;)Ljava/util/Map;

    move-result-object p1

    invoke-direct {p2, p1}, Lorg/json/JSONObject;-><init>(Ljava/util/Map;)V

    iput-object p2, p0, Lcom/moat/analytics/mobile/vng/z;->g:Lorg/json/JSONObject;

    const/4 v7, 0x1

    :cond_6
    iget-object p1, p0, Lcom/moat/analytics/mobile/vng/z;->f:Lorg/json/JSONObject;

    if-eqz p1, :cond_7

    iget-object p1, p0, Lcom/moat/analytics/mobile/vng/z;->d:Landroid/graphics/Rect;

    invoke-virtual {v6, p1}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_8

    :cond_7
    iput-object v6, p0, Lcom/moat/analytics/mobile/vng/z;->d:Landroid/graphics/Rect;

    new-instance p1, Lorg/json/JSONObject;

    invoke-static {v6, v2}, Lcom/moat/analytics/mobile/vng/z;->a(Landroid/graphics/Rect;Landroid/util/DisplayMetrics;)Ljava/util/Map;

    move-result-object p2

    invoke-direct {p1, p2}, Lorg/json/JSONObject;-><init>(Ljava/util/Map;)V

    iput-object p1, p0, Lcom/moat/analytics/mobile/vng/z;->f:Lorg/json/JSONObject;

    const/4 v7, 0x1

    :cond_8
    iget-object p1, p0, Lcom/moat/analytics/mobile/vng/z;->h:Ljava/util/Map;

    if-eqz p1, :cond_a

    iget-object p1, p0, Lcom/moat/analytics/mobile/vng/z;->h:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_9

    goto :goto_3

    :cond_9
    move v8, v7

    goto :goto_4

    :cond_a
    :goto_3
    iput-object v0, p0, Lcom/moat/analytics/mobile/vng/z;->h:Ljava/util/Map;

    :goto_4
    if-eqz v8, :cond_b

    new-instance p1, Lorg/json/JSONObject;

    iget-object p2, p0, Lcom/moat/analytics/mobile/vng/z;->h:Ljava/util/Map;

    invoke-direct {p1, p2}, Lorg/json/JSONObject;-><init>(Ljava/util/Map;)V

    const-string p2, "screen"

    iget-object v0, p0, Lcom/moat/analytics/mobile/vng/z;->g:Lorg/json/JSONObject;

    invoke-virtual {p1, p2, v0}, Lorg/json/JSONObject;->accumulate(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p2, "view"

    iget-object v0, p0, Lcom/moat/analytics/mobile/vng/z;->f:Lorg/json/JSONObject;

    invoke-virtual {p1, p2, v0}, Lorg/json/JSONObject;->accumulate(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p2, "visible"

    iget-object v0, p0, Lcom/moat/analytics/mobile/vng/z;->c:Lorg/json/JSONObject;

    invoke-virtual {p1, p2, v0}, Lorg/json/JSONObject;->accumulate(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p2, "maybe"

    iget-object v0, p0, Lcom/moat/analytics/mobile/vng/z;->c:Lorg/json/JSONObject;

    invoke-virtual {p1, p2, v0}, Lorg/json/JSONObject;->accumulate(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p2, "visiblePercent"

    iget-object v0, p0, Lcom/moat/analytics/mobile/vng/z;->b:Lcom/moat/analytics/mobile/vng/z$c;

    iget-wide v2, v0, Lcom/moat/analytics/mobile/vng/z$c;->b:D

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    invoke-virtual {p1, p2, v0}, Lorg/json/JSONObject;->accumulate(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/moat/analytics/mobile/vng/z;->a:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_5

    :catch_0
    move-exception p1

    invoke-static {p1}, Lcom/moat/analytics/mobile/vng/n;->a(Ljava/lang/Exception;)V

    iput-object v1, p0, Lcom/moat/analytics/mobile/vng/z;->a:Ljava/lang/String;

    :cond_b
    :goto_5
    return-void
.end method
