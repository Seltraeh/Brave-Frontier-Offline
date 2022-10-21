.class public Lcom/google/android/gms/games/AnnotatedData;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private final data:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field private final zzi:Z


# direct methods
.method public constructor <init>(Ljava/lang/Object;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;Z)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/games/AnnotatedData;->data:Ljava/lang/Object;

    iput-boolean p2, p0, Lcom/google/android/gms/games/AnnotatedData;->zzi:Z

    return-void
.end method


# virtual methods
.method public get()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/games/AnnotatedData;->data:Ljava/lang/Object;

    return-object v0
.end method

.method public isStale()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/gms/games/AnnotatedData;->zzi:Z

    return v0
.end method
