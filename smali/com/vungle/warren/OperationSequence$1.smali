.class Lcom/vungle/warren/OperationSequence$1;
.super Ljava/lang/Object;
.source "OperationSequence.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vungle/warren/OperationSequence;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Lcom/vungle/warren/OperationSequence$Entry;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vungle/warren/OperationSequence;


# direct methods
.method constructor <init>(Lcom/vungle/warren/OperationSequence;)V
    .locals 0

    .line 50
    iput-object p1, p0, Lcom/vungle/warren/OperationSequence$1;->this$0:Lcom/vungle/warren/OperationSequence;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Lcom/vungle/warren/OperationSequence$Entry;Lcom/vungle/warren/OperationSequence$Entry;)I
    .locals 2

    .line 54
    iget-object v0, p1, Lcom/vungle/warren/OperationSequence$Entry;->operation:Lcom/vungle/warren/AdLoader$Operation;

    iget v0, v0, Lcom/vungle/warren/AdLoader$Operation;->priority:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iget-object v1, p2, Lcom/vungle/warren/OperationSequence$Entry;->operation:Lcom/vungle/warren/AdLoader$Operation;

    iget v1, v1, Lcom/vungle/warren/AdLoader$Operation;->priority:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Integer;->compareTo(Ljava/lang/Integer;)I

    move-result v0

    if-nez v0, :cond_0

    .line 56
    invoke-static {p1}, Lcom/vungle/warren/OperationSequence$Entry;->access$000(Lcom/vungle/warren/OperationSequence$Entry;)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-static {p2}, Lcom/vungle/warren/OperationSequence$Entry;->access$000(Lcom/vungle/warren/OperationSequence$Entry;)I

    move-result p2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/Integer;->compareTo(Ljava/lang/Integer;)I

    move-result p1

    return p1

    :cond_0
    return v0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    .line 50
    check-cast p1, Lcom/vungle/warren/OperationSequence$Entry;

    check-cast p2, Lcom/vungle/warren/OperationSequence$Entry;

    invoke-virtual {p0, p1, p2}, Lcom/vungle/warren/OperationSequence$1;->compare(Lcom/vungle/warren/OperationSequence$Entry;Lcom/vungle/warren/OperationSequence$Entry;)I

    move-result p1

    return p1
.end method
