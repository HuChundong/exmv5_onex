.class public abstract Lcom/htc/net/FourG/FourGManager$ConnectionStatistics;
.super Ljava/lang/Object;
.source "FourGManager.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/net/FourG/FourGManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "ConnectionStatistics"
.end annotation


# static fields
.field public static final LINK_SPEED_UNITS:Ljava/lang/String; = "Kbps"


# instance fields
.field private downlinkThroughtput:I

.field private totalRetransmissionPackets:J

.field private totalRxBytes:J

.field private totalRxPackets:J

.field private totalTxBytes:J

.field private totalTxPackets:J

.field private uplinkThroughtput:I


# direct methods
.method protected constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const-wide/16 v0, 0x0

    .line 614
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 615
    iput-wide v0, p0, Lcom/htc/net/FourG/FourGManager$ConnectionStatistics;->totalRxBytes:J

    .line 616
    iput-wide v0, p0, Lcom/htc/net/FourG/FourGManager$ConnectionStatistics;->totalTxBytes:J

    .line 617
    iput-wide v0, p0, Lcom/htc/net/FourG/FourGManager$ConnectionStatistics;->totalRxPackets:J

    .line 618
    iput-wide v0, p0, Lcom/htc/net/FourG/FourGManager$ConnectionStatistics;->totalTxPackets:J

    .line 619
    iput-wide v0, p0, Lcom/htc/net/FourG/FourGManager$ConnectionStatistics;->totalRetransmissionPackets:J

    .line 620
    iput v2, p0, Lcom/htc/net/FourG/FourGManager$ConnectionStatistics;->downlinkThroughtput:I

    .line 621
    iput v2, p0, Lcom/htc/net/FourG/FourGManager$ConnectionStatistics;->uplinkThroughtput:I

    .line 622
    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 2
    .parameter "in"

    .prologue
    .line 811
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 812
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/htc/net/FourG/FourGManager$ConnectionStatistics;->totalRxBytes:J

    .line 813
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/htc/net/FourG/FourGManager$ConnectionStatistics;->totalTxBytes:J

    .line 814
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/htc/net/FourG/FourGManager$ConnectionStatistics;->totalRxPackets:J

    .line 815
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/htc/net/FourG/FourGManager$ConnectionStatistics;->totalTxPackets:J

    .line 816
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/htc/net/FourG/FourGManager$ConnectionStatistics;->totalRetransmissionPackets:J

    .line 817
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/htc/net/FourG/FourGManager$ConnectionStatistics;->downlinkThroughtput:I

    .line 818
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/htc/net/FourG/FourGManager$ConnectionStatistics;->uplinkThroughtput:I

    .line 819
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 783
    const/4 v0, 0x0

    return v0
.end method

.method public abstract getDownlinkModulation()Lcom/htc/net/FourG/FourGBaseStationInfo$eFOURG_MODULATION;
.end method

.method public getDownlinkThroughtput()I
    .locals 1

    .prologue
    .line 689
    iget v0, p0, Lcom/htc/net/FourG/FourGManager$ConnectionStatistics;->downlinkThroughtput:I

    return v0
.end method

.method public getQosStatistics(Lcom/htc/net/FourG/QosServiceFlowDescriptor;)Lcom/htc/net/FourG/QosStatistics;
    .locals 1
    .parameter "serviceFlow"

    .prologue
    .line 723
    const/4 v0, 0x0

    return-object v0
.end method

.method public getTotalRxBytes()J
    .locals 2

    .prologue
    .line 629
    iget-wide v0, p0, Lcom/htc/net/FourG/FourGManager$ConnectionStatistics;->totalRxBytes:J

    return-wide v0
.end method

.method public getTotalRxPackets()J
    .locals 2

    .prologue
    .line 641
    iget-wide v0, p0, Lcom/htc/net/FourG/FourGManager$ConnectionStatistics;->totalRxPackets:J

    return-wide v0
.end method

.method public getTotalTxBytes()J
    .locals 2

    .prologue
    .line 653
    iget-wide v0, p0, Lcom/htc/net/FourG/FourGManager$ConnectionStatistics;->totalTxBytes:J

    return-wide v0
.end method

.method public getTotalTxPacketRetransmissions()J
    .locals 2

    .prologue
    .line 677
    iget-wide v0, p0, Lcom/htc/net/FourG/FourGManager$ConnectionStatistics;->totalRetransmissionPackets:J

    return-wide v0
.end method

.method public getTotalTxPackets()J
    .locals 2

    .prologue
    .line 665
    iget-wide v0, p0, Lcom/htc/net/FourG/FourGManager$ConnectionStatistics;->totalTxPackets:J

    return-wide v0
.end method

.method public abstract getUplinkModulation()Lcom/htc/net/FourG/FourGBaseStationInfo$eFOURG_MODULATION;
.end method

.method public getUplinkThroughtput()I
    .locals 1

    .prologue
    .line 701
    iget v0, p0, Lcom/htc/net/FourG/FourGManager$ConnectionStatistics;->uplinkThroughtput:I

    return v0
.end method

.method public readFromParcel(Landroid/os/Parcel;)V
    .locals 2
    .parameter "in"

    .prologue
    .line 801
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/htc/net/FourG/FourGManager$ConnectionStatistics;->totalRxBytes:J

    .line 802
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/htc/net/FourG/FourGManager$ConnectionStatistics;->totalTxBytes:J

    .line 803
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/htc/net/FourG/FourGManager$ConnectionStatistics;->totalRxPackets:J

    .line 804
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/htc/net/FourG/FourGManager$ConnectionStatistics;->totalTxPackets:J

    .line 805
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/htc/net/FourG/FourGManager$ConnectionStatistics;->totalRetransmissionPackets:J

    .line 806
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/htc/net/FourG/FourGManager$ConnectionStatistics;->downlinkThroughtput:I

    .line 807
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/htc/net/FourG/FourGManager$ConnectionStatistics;->uplinkThroughtput:I

    .line 808
    return-void
.end method

.method public refresh(Landroid/app/PendingIntent;)V
    .locals 0
    .parameter "intent"

    .prologue
    .line 731
    return-void
.end method

.method public resetAllQoSStatistics(Landroid/app/PendingIntent;)V
    .locals 0
    .parameter "intent"

    .prologue
    .line 740
    return-void
.end method

.method public resetAllStatistics(Landroid/app/PendingIntent;)V
    .locals 0
    .parameter "intent"

    .prologue
    .line 750
    return-void
.end method

.method public resetQosStatistics(Lcom/htc/net/FourG/QosServiceFlowDescriptor;Landroid/app/PendingIntent;)Z
    .locals 1
    .parameter "serviceFlow"
    .parameter "intent"

    .prologue
    .line 760
    const/4 v0, 0x0

    return v0
.end method

.method public setDownlinkThroughtput(I)V
    .locals 0
    .parameter "downlinkThroughtput"

    .prologue
    .line 693
    iput p1, p0, Lcom/htc/net/FourG/FourGManager$ConnectionStatistics;->downlinkThroughtput:I

    .line 694
    return-void
.end method

.method public setTotalRxBytes(J)V
    .locals 0
    .parameter "totalRxBytes"

    .prologue
    .line 633
    iput-wide p1, p0, Lcom/htc/net/FourG/FourGManager$ConnectionStatistics;->totalRxBytes:J

    .line 634
    return-void
.end method

.method public setTotalRxPackets(J)V
    .locals 0
    .parameter "totalRxPackets"

    .prologue
    .line 645
    iput-wide p1, p0, Lcom/htc/net/FourG/FourGManager$ConnectionStatistics;->totalRxPackets:J

    .line 646
    return-void
.end method

.method public setTotalTxBytes(J)V
    .locals 0
    .parameter "totalTxBytes"

    .prologue
    .line 657
    iput-wide p1, p0, Lcom/htc/net/FourG/FourGManager$ConnectionStatistics;->totalTxBytes:J

    .line 658
    return-void
.end method

.method public setTotalTxPacketRetransmissions(J)V
    .locals 0
    .parameter "totalRetransmissionPackets"

    .prologue
    .line 681
    iput-wide p1, p0, Lcom/htc/net/FourG/FourGManager$ConnectionStatistics;->totalRetransmissionPackets:J

    .line 682
    return-void
.end method

.method public setTotalTxPackets(J)V
    .locals 0
    .parameter "totalTxPackets"

    .prologue
    .line 669
    iput-wide p1, p0, Lcom/htc/net/FourG/FourGManager$ConnectionStatistics;->totalTxPackets:J

    .line 670
    return-void
.end method

.method public setUplinkThroughtput(I)V
    .locals 0
    .parameter "uplinkThroughtput"

    .prologue
    .line 705
    iput p1, p0, Lcom/htc/net/FourG/FourGManager$ConnectionStatistics;->uplinkThroughtput:I

    .line 706
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 766
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 767
    .local v0, ret:Ljava/lang/StringBuilder;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-class v2, Lcom/htc/net/FourG/FourGManager$ConnectionStatistics;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " {"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 768
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "TotalRxBytes: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/htc/net/FourG/FourGManager$ConnectionStatistics;->totalRxBytes:J

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 769
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ", TotalTxBytes: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/htc/net/FourG/FourGManager$ConnectionStatistics;->totalTxBytes:J

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 770
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ", TotalRxPackets: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/htc/net/FourG/FourGManager$ConnectionStatistics;->totalRxPackets:J

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 771
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ", TotalTxPackets: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/htc/net/FourG/FourGManager$ConnectionStatistics;->totalTxPackets:J

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 772
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ", TotalRetransmissionPackets: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/htc/net/FourG/FourGManager$ConnectionStatistics;->totalRetransmissionPackets:J

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 773
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ", DownlinkThroughtput: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/htc/net/FourG/FourGManager$ConnectionStatistics;->downlinkThroughtput:I

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 774
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ", UplinkThroughtput: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/htc/net/FourG/FourGManager$ConnectionStatistics;->uplinkThroughtput:I

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 775
    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 777
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2
    .parameter "out"
    .parameter "flags"

    .prologue
    .line 789
    iget-wide v0, p0, Lcom/htc/net/FourG/FourGManager$ConnectionStatistics;->totalRxBytes:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 790
    iget-wide v0, p0, Lcom/htc/net/FourG/FourGManager$ConnectionStatistics;->totalTxBytes:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 791
    iget-wide v0, p0, Lcom/htc/net/FourG/FourGManager$ConnectionStatistics;->totalRxPackets:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 792
    iget-wide v0, p0, Lcom/htc/net/FourG/FourGManager$ConnectionStatistics;->totalTxPackets:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 793
    iget-wide v0, p0, Lcom/htc/net/FourG/FourGManager$ConnectionStatistics;->totalRetransmissionPackets:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 794
    iget v0, p0, Lcom/htc/net/FourG/FourGManager$ConnectionStatistics;->downlinkThroughtput:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 795
    iget v0, p0, Lcom/htc/net/FourG/FourGManager$ConnectionStatistics;->uplinkThroughtput:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 796
    return-void
.end method
