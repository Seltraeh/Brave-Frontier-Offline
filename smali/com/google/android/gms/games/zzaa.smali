.class final Lcom/google/android/gms/games/zzaa;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/common/internal/PendingResultUtil$ResultConverter;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/common/internal/PendingResultUtil$ResultConverter<",
        "Lcom/google/android/gms/games/multiplayer/Invitations$LoadInvitationsResult;",
        "Lcom/google/android/gms/games/multiplayer/InvitationBuffer;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic convert(Lcom/google/android/gms/common/api/Result;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lcom/google/android/gms/games/multiplayer/Invitations$LoadInvitationsResult;

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    invoke-interface {p1}, Lcom/google/android/gms/games/multiplayer/Invitations$LoadInvitationsResult;->getInvitations()Lcom/google/android/gms/games/multiplayer/InvitationBuffer;

    move-result-object p1

    return-object p1
.end method
