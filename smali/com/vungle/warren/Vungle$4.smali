.class Lcom/vungle/warren/Vungle$4;
.super Ljava/lang/Object;
.source "Vungle.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vungle/warren/Vungle;->configure(Lcom/vungle/warren/InitCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Lcom/vungle/warren/model/Placement;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vungle/warren/Vungle;


# direct methods
.method constructor <init>(Lcom/vungle/warren/Vungle;)V
    .locals 0

    .line 564
    iput-object p1, p0, Lcom/vungle/warren/Vungle$4;->this$0:Lcom/vungle/warren/Vungle;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Lcom/vungle/warren/model/Placement;Lcom/vungle/warren/model/Placement;)I
    .locals 0

    .line 567
    invoke-virtual {p1}, Lcom/vungle/warren/model/Placement;->getAutoCachePriority()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p2}, Lcom/vungle/warren/model/Placement;->getAutoCachePriority()I

    move-result p2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/Integer;->compareTo(Ljava/lang/Integer;)I

    move-result p1

    return p1
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    .line 564
    check-cast p1, Lcom/vungle/warren/model/Placement;

    check-cast p2, Lcom/vungle/warren/model/Placement;

    invoke-virtual {p0, p1, p2}, Lcom/vungle/warren/Vungle$4;->compare(Lcom/vungle/warren/model/Placement;Lcom/vungle/warren/model/Placement;)I

    move-result p1

    return p1
.end method
