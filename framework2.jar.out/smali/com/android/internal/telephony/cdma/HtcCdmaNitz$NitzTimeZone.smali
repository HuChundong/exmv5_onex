.class Lcom/android/internal/telephony/cdma/HtcCdmaNitz$NitzTimeZone;
.super Ljava/lang/Object;
.source "HtcCdmaNitz.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/cdma/HtcCdmaNitz;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "NitzTimeZone"
.end annotation


# instance fields
.field countryIso:Ljava/lang/String;

.field daylightSavingTime:Ljava/lang/Boolean;

.field knownTimeZone:Ljava/util/TimeZone;

.field predictionType:I

.field sid:Ljava/lang/Integer;

.field final synthetic this$0:Lcom/android/internal/telephony/cdma/HtcCdmaNitz;

.field timeInNitz:J

.field timeZoneOffset:I


# direct methods
.method private constructor <init>(Lcom/android/internal/telephony/cdma/HtcCdmaNitz;)V
    .locals 0
    .parameter

    .prologue
    .line 729
    iput-object p1, p0, Lcom/android/internal/telephony/cdma/HtcCdmaNitz$NitzTimeZone;->this$0:Lcom/android/internal/telephony/cdma/HtcCdmaNitz;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/internal/telephony/cdma/HtcCdmaNitz;Lcom/android/internal/telephony/cdma/HtcCdmaNitz$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 729
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/cdma/HtcCdmaNitz$NitzTimeZone;-><init>(Lcom/android/internal/telephony/cdma/HtcCdmaNitz;)V

    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 746
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 747
    .local v0, strBuf:Ljava/lang/StringBuilder;
    invoke-static {}, Lcom/android/internal/telephony/cdma/HtcCdmaNitz;->access$400()[C

    move-result-object v1

    aget-char v1, v1, v3

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 748
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/HtcCdmaNitz$NitzTimeZone;->countryIso:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 749
    invoke-static {}, Lcom/android/internal/telephony/cdma/HtcCdmaNitz;->access$200()[C

    move-result-object v1

    aget-char v1, v1, v3

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 750
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/HtcCdmaNitz$NitzTimeZone;->sid:Ljava/lang/Integer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 751
    invoke-static {}, Lcom/android/internal/telephony/cdma/HtcCdmaNitz;->access$400()[C

    move-result-object v1

    const/4 v2, 0x1

    aget-char v1, v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 752
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/HtcCdmaNitz$NitzTimeZone;->daylightSavingTime:Ljava/lang/Boolean;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 753
    invoke-static {}, Lcom/android/internal/telephony/cdma/HtcCdmaNitz;->access$200()[C

    move-result-object v1

    aget-char v1, v1, v3

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 754
    iget v1, p0, Lcom/android/internal/telephony/cdma/HtcCdmaNitz$NitzTimeZone;->timeZoneOffset:I

    const v2, 0xea60

    div-int/2addr v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 755
    const-string v1, " -> "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 756
    iget v1, p0, Lcom/android/internal/telephony/cdma/HtcCdmaNitz$NitzTimeZone;->predictionType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 757
    invoke-static {}, Lcom/android/internal/telephony/cdma/HtcCdmaNitz;->access$200()[C

    move-result-object v1

    aget-char v1, v1, v3

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 758
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/HtcCdmaNitz$NitzTimeZone;->knownTimeZone:Ljava/util/TimeZone;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/internal/telephony/cdma/HtcCdmaNitz$NitzTimeZone;->knownTimeZone:Ljava/util/TimeZone;

    invoke-virtual {v1}, Ljava/util/TimeZone;->getID()Ljava/lang/String;

    move-result-object v1

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 759
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 758
    :cond_0
    const-string v1, ""

    goto :goto_0
.end method
