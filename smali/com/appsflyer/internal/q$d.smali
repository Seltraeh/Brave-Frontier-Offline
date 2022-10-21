.class public final Lcom/appsflyer/internal/q$d;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/appsflyer/internal/q;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "d"
.end annotation


# instance fields
.field public final ǃ:Ljava/lang/String;

.field private final Ι:Z


# direct methods
.method constructor <init>(Ljava/lang/String;Z)V
    .locals 0

    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    iput-object p1, p0, Lcom/appsflyer/internal/q$d;->ǃ:Ljava/lang/String;

    .line 58
    iput-boolean p2, p0, Lcom/appsflyer/internal/q$d;->Ι:Z

    return-void
.end method


# virtual methods
.method public final Ι()Z
    .locals 1

    .line 66
    iget-boolean v0, p0, Lcom/appsflyer/internal/q$d;->Ι:Z

    return v0
.end method
