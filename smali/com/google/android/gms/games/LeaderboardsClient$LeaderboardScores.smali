.class public Lcom/google/android/gms/games/LeaderboardsClient$LeaderboardScores;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/common/api/Releasable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/games/LeaderboardsClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "LeaderboardScores"
.end annotation


# instance fields
.field private final zzbv:Lcom/google/android/gms/games/leaderboard/Leaderboard;

.field private final zzbw:Lcom/google/android/gms/games/leaderboard/LeaderboardScoreBuffer;


# direct methods
.method constructor <init>(Lcom/google/android/gms/games/leaderboard/Leaderboard;Lcom/google/android/gms/games/leaderboard/LeaderboardScoreBuffer;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/games/LeaderboardsClient$LeaderboardScores;->zzbv:Lcom/google/android/gms/games/leaderboard/Leaderboard;

    iput-object p2, p0, Lcom/google/android/gms/games/LeaderboardsClient$LeaderboardScores;->zzbw:Lcom/google/android/gms/games/leaderboard/LeaderboardScoreBuffer;

    return-void
.end method


# virtual methods
.method public getLeaderboard()Lcom/google/android/gms/games/leaderboard/Leaderboard;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/games/LeaderboardsClient$LeaderboardScores;->zzbv:Lcom/google/android/gms/games/leaderboard/Leaderboard;

    return-object v0
.end method

.method public getScores()Lcom/google/android/gms/games/leaderboard/LeaderboardScoreBuffer;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/games/LeaderboardsClient$LeaderboardScores;->zzbw:Lcom/google/android/gms/games/leaderboard/LeaderboardScoreBuffer;

    return-object v0
.end method

.method public release()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/games/LeaderboardsClient$LeaderboardScores;->zzbw:Lcom/google/android/gms/games/leaderboard/LeaderboardScoreBuffer;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/google/android/gms/common/data/AbstractDataBuffer;->release()V

    :cond_0
    return-void
.end method
