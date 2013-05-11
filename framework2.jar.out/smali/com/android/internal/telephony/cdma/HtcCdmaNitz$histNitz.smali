.class public Lcom/android/internal/telephony/cdma/HtcCdmaNitz$histNitz;
.super Ljava/lang/Object;
.source "HtcCdmaNitz.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/cdma/HtcCdmaNitz;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "histNitz"
.end annotation


# instance fields
.field public modemTime:J

.field public nextBaseStation:Lcom/android/internal/telephony/cdma/HtcCdmaNitz$infoBaseStation;

.field public nitz:Ljava/lang/String;

.field public previousBaseStation:Lcom/android/internal/telephony/cdma/HtcCdmaNitz$infoBaseStation;

.field public receivedDate:Ljava/util/Date;

.field public receivedTime:J

.field public setupSysMsec:J

.field public setupTime:J

.field public setupType:Ljava/lang/Integer;

.field public setupZone:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;JJLjava/util/Date;)V
    .locals 0
    .parameter "nitz"
    .parameter "modemTime"
    .parameter "receivedTime"
    .parameter "receivedDate"

    .prologue
    .line 566
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 567
    iput-object p1, p0, Lcom/android/internal/telephony/cdma/HtcCdmaNitz$histNitz;->nitz:Ljava/lang/String;

    .line 568
    iput-wide p2, p0, Lcom/android/internal/telephony/cdma/HtcCdmaNitz$histNitz;->modemTime:J

    .line 569
    iput-wide p4, p0, Lcom/android/internal/telephony/cdma/HtcCdmaNitz$histNitz;->receivedTime:J

    .line 570
    iput-object p6, p0, Lcom/android/internal/telephony/cdma/HtcCdmaNitz$histNitz;->receivedDate:Ljava/util/Date;

    .line 571
    return-void
.end method

.method static synthetic access$300(Lcom/android/internal/telephony/cdma/HtcCdmaNitz$histNitz;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 550
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/cdma/HtcCdmaNitz$histNitz;->toLog(Z)V

    return-void
.end method

.method private toLog(Z)V
    .locals 4
    .parameter "longFormat"

    .prologue
    const/4 v3, 0x0

    .line 588
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 589
    .local v0, strBuf:Ljava/lang/StringBuilder;
    const-string v1, "NITZ-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 590
    invoke-static {}, Lcom/android/internal/telephony/cdma/HtcCdmaNitz;->access$000()[C

    move-result-object v1

    aget-char v1, v1, v3

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 591
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/HtcCdmaNitz$histNitz;->receivedDate:Ljava/util/Date;

    #calls: Lcom/android/internal/telephony/cdma/HtcCdmaNitz;->logShortDate(Ljava/util/Date;)Ljava/lang/String;
    invoke-static {v1}, Lcom/android/internal/telephony/cdma/HtcCdmaNitz;->access$100(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 592
    invoke-static {}, Lcom/android/internal/telephony/cdma/HtcCdmaNitz;->access$200()[C

    move-result-object v1

    aget-char v1, v1, v3

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 593
    iget-wide v1, p0, Lcom/android/internal/telephony/cdma/HtcCdmaNitz$histNitz;->receivedTime:J

    invoke-static {v1, v2}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 594
    invoke-static {}, Lcom/android/internal/telephony/cdma/HtcCdmaNitz;->access$200()[C

    move-result-object v1

    aget-char v1, v1, v3

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 595
    iget-wide v1, p0, Lcom/android/internal/telephony/cdma/HtcCdmaNitz$histNitz;->modemTime:J

    invoke-static {v1, v2}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 596
    invoke-static {}, Lcom/android/internal/telephony/cdma/HtcCdmaNitz;->access$000()[C

    move-result-object v1

    const/4 v2, 0x1

    aget-char v1, v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 597
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/HtcCdmaNitz$histNitz;->setupType:Ljava/lang/Integer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 598
    const/16 v1, 0x3a

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 599
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/HtcCdmaNitz$histNitz;->nitz:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 600
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/HtcCdmaNitz$histNitz;->setupType:Ljava/lang/Integer;

    if-eqz v1, :cond_0

    .line 601
    const-string v1, " => "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 602
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/HtcCdmaNitz$histNitz;->setupZone:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 603
    invoke-static {}, Lcom/android/internal/telephony/cdma/HtcCdmaNitz;->access$200()[C

    move-result-object v1

    aget-char v1, v1, v3

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 604
    iget-wide v1, p0, Lcom/android/internal/telephony/cdma/HtcCdmaNitz$histNitz;->setupTime:J

    invoke-static {v1, v2}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 605
    invoke-static {}, Lcom/android/internal/telephony/cdma/HtcCdmaNitz;->access$200()[C

    move-result-object v1

    aget-char v1, v1, v3

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 606
    iget-wide v1, p0, Lcom/android/internal/telephony/cdma/HtcCdmaNitz$histNitz;->setupSysMsec:J

    invoke-static {v1, v2}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 608
    :cond_0
    if-eqz p1, :cond_1

    .line 609
    const-string v1, " during "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 610
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/HtcCdmaNitz$histNitz;->previousBaseStation:Lcom/android/internal/telephony/cdma/HtcCdmaNitz$infoBaseStation;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 611
    const-string v1, " ~ "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 612
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/HtcCdmaNitz$histNitz;->nextBaseStation:Lcom/android/internal/telephony/cdma/HtcCdmaNitz$infoBaseStation;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 614
    :cond_1
    const-string v1, "CDMA"

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 615
    return-void
.end method
