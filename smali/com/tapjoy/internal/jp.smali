.class public final Lcom/tapjoy/internal/jp;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field final a:Ljava/lang/String;

.field final b:Ljava/lang/CharSequence;

.field final c:[Ljava/lang/CharSequence;

.field final d:Z

.field final e:Landroid/os/Bundle;

.field final f:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static a([Lcom/tapjoy/internal/jp;)[Landroid/app/RemoteInput;
    .locals 5

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 416
    :cond_0
    array-length v0, p0

    new-array v0, v0, [Landroid/app/RemoteInput;

    const/4 v1, 0x0

    .line 417
    :goto_0
    array-length v2, p0

    if-ge v1, v2, :cond_1

    .line 418
    aget-object v2, p0, v1

    .line 1425
    new-instance v3, Landroid/app/RemoteInput$Builder;

    .line 2071
    iget-object v4, v2, Lcom/tapjoy/internal/jp;->a:Ljava/lang/String;

    .line 1425
    invoke-direct {v3, v4}, Landroid/app/RemoteInput$Builder;-><init>(Ljava/lang/String;)V

    .line 2078
    iget-object v4, v2, Lcom/tapjoy/internal/jp;->b:Ljava/lang/CharSequence;

    .line 1426
    invoke-virtual {v3, v4}, Landroid/app/RemoteInput$Builder;->setLabel(Ljava/lang/CharSequence;)Landroid/app/RemoteInput$Builder;

    move-result-object v3

    .line 2085
    iget-object v4, v2, Lcom/tapjoy/internal/jp;->c:[Ljava/lang/CharSequence;

    .line 1427
    invoke-virtual {v3, v4}, Landroid/app/RemoteInput$Builder;->setChoices([Ljava/lang/CharSequence;)Landroid/app/RemoteInput$Builder;

    move-result-object v3

    .line 2111
    iget-boolean v4, v2, Lcom/tapjoy/internal/jp;->d:Z

    .line 1428
    invoke-virtual {v3, v4}, Landroid/app/RemoteInput$Builder;->setAllowFreeFormInput(Z)Landroid/app/RemoteInput$Builder;

    move-result-object v3

    .line 2118
    iget-object v2, v2, Lcom/tapjoy/internal/jp;->e:Landroid/os/Bundle;

    .line 1429
    invoke-virtual {v3, v2}, Landroid/app/RemoteInput$Builder;->addExtras(Landroid/os/Bundle;)Landroid/app/RemoteInput$Builder;

    move-result-object v2

    .line 1430
    invoke-virtual {v2}, Landroid/app/RemoteInput$Builder;->build()Landroid/app/RemoteInput;

    move-result-object v2

    .line 418
    aput-object v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-object v0
.end method
