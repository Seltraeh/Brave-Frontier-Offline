.class public final Lcom/google/android/gms/internal/measurement/zzdc;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/measurement/zzbr;


# annotations
.annotation build Lcom/google/android/gms/common/util/VisibleForTesting;
.end annotation


# instance fields
.field public zzabr:Ljava/lang/String;

.field public zzabs:D

.field public zzabt:I

.field public zzabu:I

.field public zzabv:I

.field public zzabw:I

.field public zzabx:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/high16 v0, -0x4010000000000000L    # -1.0

    iput-wide v0, p0, Lcom/google/android/gms/internal/measurement/zzdc;->zzabs:D

    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/gms/internal/measurement/zzdc;->zzabt:I

    iput v0, p0, Lcom/google/android/gms/internal/measurement/zzdc;->zzabu:I

    iput v0, p0, Lcom/google/android/gms/internal/measurement/zzdc;->zzabv:I

    iput v0, p0, Lcom/google/android/gms/internal/measurement/zzdc;->zzabw:I

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/measurement/zzdc;->zzabx:Ljava/util/Map;

    return-void
.end method
