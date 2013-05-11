.class public final Lcom/android/camera/Duration;
.super Ljava/lang/Object;
.source "Duration.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable",
        "<",
        "Lcom/android/camera/Duration;",
        ">;"
    }
.end annotation


# static fields
.field private static final DURATION_0S:Lcom/android/camera/Duration;

.field private static final DURATION_10S:Lcom/android/camera/Duration;

.field private static final DURATION_2S:Lcom/android/camera/Duration;

.field private static final DURATION_3S:Lcom/android/camera/Duration;

.field private static final DURATION_5S:Lcom/android/camera/Duration;

.field public static final INFINITE:Lcom/android/camera/Duration;


# instance fields
.field private final m_Milliseconds:J


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/android/camera/Duration;

    const-wide/16 v1, 0x0

    invoke-direct {v0, v1, v2}, Lcom/android/camera/Duration;-><init>(J)V

    sput-object v0, Lcom/android/camera/Duration;->DURATION_0S:Lcom/android/camera/Duration;

    new-instance v0, Lcom/android/camera/Duration;

    const-wide/16 v1, 0x7d0

    invoke-direct {v0, v1, v2}, Lcom/android/camera/Duration;-><init>(J)V

    sput-object v0, Lcom/android/camera/Duration;->DURATION_2S:Lcom/android/camera/Duration;

    new-instance v0, Lcom/android/camera/Duration;

    const-wide/16 v1, 0xbb8

    invoke-direct {v0, v1, v2}, Lcom/android/camera/Duration;-><init>(J)V

    sput-object v0, Lcom/android/camera/Duration;->DURATION_3S:Lcom/android/camera/Duration;

    new-instance v0, Lcom/android/camera/Duration;

    const-wide/16 v1, 0x1388

    invoke-direct {v0, v1, v2}, Lcom/android/camera/Duration;-><init>(J)V

    sput-object v0, Lcom/android/camera/Duration;->DURATION_5S:Lcom/android/camera/Duration;

    new-instance v0, Lcom/android/camera/Duration;

    const-wide/16 v1, 0x2710

    invoke-direct {v0, v1, v2}, Lcom/android/camera/Duration;-><init>(J)V

    sput-object v0, Lcom/android/camera/Duration;->DURATION_10S:Lcom/android/camera/Duration;

    new-instance v0, Lcom/android/camera/Duration;

    const-wide v1, 0x7fffffffffffffffL

    invoke-direct {v0, v1, v2}, Lcom/android/camera/Duration;-><init>(J)V

    sput-object v0, Lcom/android/camera/Duration;->INFINITE:Lcom/android/camera/Duration;

    return-void
.end method

.method private constructor <init>(J)V
    .locals 0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Lcom/android/camera/Duration;->m_Milliseconds:J

    return-void
.end method

.method public static fromMilliseconds(J)Lcom/android/camera/Duration;
    .locals 1

    new-instance v0, Lcom/android/camera/Duration;

    invoke-direct {v0, p0, p1}, Lcom/android/camera/Duration;-><init>(J)V

    return-object v0
.end method

.method public static fromMinutes(J)Lcom/android/camera/Duration;
    .locals 3

    new-instance v0, Lcom/android/camera/Duration;

    const-wide/32 v1, 0xea60

    mul-long/2addr v1, p0

    invoke-direct {v0, v1, v2}, Lcom/android/camera/Duration;-><init>(J)V

    return-object v0
.end method

.method public static fromSeconds(J)Lcom/android/camera/Duration;
    .locals 3

    const-wide/16 v0, 0x0

    cmp-long v0, p0, v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/android/camera/Duration;->DURATION_0S:Lcom/android/camera/Duration;

    :goto_0
    return-object v0

    :cond_0
    const-wide/16 v0, 0x2

    cmp-long v0, p0, v0

    if-nez v0, :cond_1

    sget-object v0, Lcom/android/camera/Duration;->DURATION_2S:Lcom/android/camera/Duration;

    goto :goto_0

    :cond_1
    const-wide/16 v0, 0x3

    cmp-long v0, p0, v0

    if-nez v0, :cond_2

    sget-object v0, Lcom/android/camera/Duration;->DURATION_3S:Lcom/android/camera/Duration;

    goto :goto_0

    :cond_2
    const-wide/16 v0, 0x5

    cmp-long v0, p0, v0

    if-nez v0, :cond_3

    sget-object v0, Lcom/android/camera/Duration;->DURATION_5S:Lcom/android/camera/Duration;

    goto :goto_0

    :cond_3
    const-wide/16 v0, 0xa

    cmp-long v0, p0, v0

    if-nez v0, :cond_4

    sget-object v0, Lcom/android/camera/Duration;->DURATION_10S:Lcom/android/camera/Duration;

    goto :goto_0

    :cond_4
    new-instance v0, Lcom/android/camera/Duration;

    const-wide/16 v1, 0x3e8

    mul-long/2addr v1, p0

    invoke-direct {v0, v1, v2}, Lcom/android/camera/Duration;-><init>(J)V

    goto :goto_0
.end method


# virtual methods
.method public compareTo(Lcom/android/camera/Duration;)I
    .locals 9

    const-wide/16 v7, 0x0

    const/4 v2, 0x1

    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return v2

    :cond_1
    iget-wide v3, p0, Lcom/android/camera/Duration;->m_Milliseconds:J

    iget-wide v5, p1, Lcom/android/camera/Duration;->m_Milliseconds:J

    sub-long v0, v3, v5

    cmp-long v3, v0, v7

    if-gez v3, :cond_2

    const/4 v2, -0x1

    goto :goto_0

    :cond_2
    cmp-long v3, v0, v7

    if-gtz v3, :cond_0

    const/4 v2, 0x0

    goto :goto_0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 1

    check-cast p1, Lcom/android/camera/Duration;

    invoke-virtual {p0, p1}, Lcom/android/camera/Duration;->compareTo(Lcom/android/camera/Duration;)I

    move-result v0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 5

    const/4 v0, 0x0

    instance-of v1, p1, Lcom/android/camera/Duration;

    if-eqz v1, :cond_0

    iget-wide v1, p0, Lcom/android/camera/Duration;->m_Milliseconds:J

    check-cast p1, Lcom/android/camera/Duration;

    iget-wide v3, p1, Lcom/android/camera/Duration;->m_Milliseconds:J

    cmp-long v1, v1, v3

    if-nez v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public getHours()J
    .locals 4

    invoke-virtual {p0}, Lcom/android/camera/Duration;->isInfinite()Z

    move-result v0

    if-eqz v0, :cond_0

    const-wide v0, 0x7fffffffffffffffL

    :goto_0
    return-wide v0

    :cond_0
    iget-wide v0, p0, Lcom/android/camera/Duration;->m_Milliseconds:J

    const-wide/32 v2, 0x36ee80

    div-long/2addr v0, v2

    goto :goto_0
.end method

.method public getMilliseconds()J
    .locals 2

    iget-wide v0, p0, Lcom/android/camera/Duration;->m_Milliseconds:J

    return-wide v0
.end method

.method public getMinutes()J
    .locals 4

    invoke-virtual {p0}, Lcom/android/camera/Duration;->isInfinite()Z

    move-result v0

    if-eqz v0, :cond_0

    const-wide v0, 0x7fffffffffffffffL

    :goto_0
    return-wide v0

    :cond_0
    iget-wide v0, p0, Lcom/android/camera/Duration;->m_Milliseconds:J

    const-wide/32 v2, 0xea60

    div-long/2addr v0, v2

    goto :goto_0
.end method

.method public getSeconds()J
    .locals 4

    invoke-virtual {p0}, Lcom/android/camera/Duration;->isInfinite()Z

    move-result v0

    if-eqz v0, :cond_0

    const-wide v0, 0x7fffffffffffffffL

    :goto_0
    return-wide v0

    :cond_0
    iget-wide v0, p0, Lcom/android/camera/Duration;->m_Milliseconds:J

    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    goto :goto_0
.end method

.method public hashCode()I
    .locals 2

    iget-wide v0, p0, Lcom/android/camera/Duration;->m_Milliseconds:J

    long-to-int v0, v0

    return v0
.end method

.method public isInfinite()Z
    .locals 1

    sget-object v0, Lcom/android/camera/Duration;->INFINITE:Lcom/android/camera/Duration;

    if-ne p0, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    invoke-virtual {p0}, Lcom/android/camera/Duration;->isInfinite()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "Infinite"

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-wide v1, p0, Lcom/android/camera/Duration;->m_Milliseconds:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " ms"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method
