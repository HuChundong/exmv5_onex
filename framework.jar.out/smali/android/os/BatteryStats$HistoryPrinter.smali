.class public Landroid/os/BatteryStats$HistoryPrinter;
.super Ljava/lang/Object;
.source "BatteryStats.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/os/BatteryStats;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "HistoryPrinter"
.end annotation


# instance fields
.field oldHealth:I

.field oldPlug:I

.field oldState:I

.field oldStatus:I

.field oldTemp:I

.field oldVolt:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, -0x1

    .line 2017
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 2018
    const/4 v0, 0x0

    iput v0, p0, Landroid/os/BatteryStats$HistoryPrinter;->oldState:I

    .line 2019
    iput v1, p0, Landroid/os/BatteryStats$HistoryPrinter;->oldStatus:I

    .line 2020
    iput v1, p0, Landroid/os/BatteryStats$HistoryPrinter;->oldHealth:I

    .line 2021
    iput v1, p0, Landroid/os/BatteryStats$HistoryPrinter;->oldPlug:I

    .line 2022
    iput v1, p0, Landroid/os/BatteryStats$HistoryPrinter;->oldTemp:I

    .line 2023
    iput v1, p0, Landroid/os/BatteryStats$HistoryPrinter;->oldVolt:I

    return-void
.end method


# virtual methods
.method public printNextItem(Ljava/io/PrintWriter;Landroid/os/BatteryStats$HistoryItem;J)V
    .locals 3
    .parameter "pw"
    .parameter "rec"
    .parameter "now"

    .prologue
    .line 2026
    const-string v0, "  "

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2027
    iget-wide v0, p2, Landroid/os/BatteryStats$HistoryItem;->time:J

    sub-long/2addr v0, p3

    const/16 v2, 0x13

    invoke-static {v0, v1, p1, v2}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;I)V

    .line 2028
    const-string v0, " "

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2029
    iget-byte v0, p2, Landroid/os/BatteryStats$HistoryItem;->cmd:B

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 2030
    const-string v0, " START"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2129
    :goto_0
    iget v0, p2, Landroid/os/BatteryStats$HistoryItem;->states:I

    iput v0, p0, Landroid/os/BatteryStats$HistoryPrinter;->oldState:I

    .line 2130
    return-void

    .line 2031
    :cond_0
    iget-byte v0, p2, Landroid/os/BatteryStats$HistoryItem;->cmd:B

    const/4 v1, 0x3

    if-ne v0, v1, :cond_1

    .line 2032
    const-string v0, " *OVERFLOW*"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_0

    .line 2034
    :cond_1
    iget-byte v0, p2, Landroid/os/BatteryStats$HistoryItem;->batteryLevel:B

    const/16 v1, 0xa

    if-ge v0, v1, :cond_9

    const-string v0, "00"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2036
    :cond_2
    :goto_1
    iget-byte v0, p2, Landroid/os/BatteryStats$HistoryItem;->batteryLevel:B

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 2037
    const-string v0, " "

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2038
    iget v0, p2, Landroid/os/BatteryStats$HistoryItem;->states:I

    const/16 v1, 0x10

    if-ge v0, v1, :cond_a

    const-string v0, "0000000"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2045
    :cond_3
    :goto_2
    iget v0, p2, Landroid/os/BatteryStats$HistoryItem;->states:I

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2046
    iget v0, p0, Landroid/os/BatteryStats$HistoryPrinter;->oldStatus:I

    iget-byte v1, p2, Landroid/os/BatteryStats$HistoryItem;->batteryStatus:B

    if-eq v0, v1, :cond_4

    .line 2047
    iget-byte v0, p2, Landroid/os/BatteryStats$HistoryItem;->batteryStatus:B

    iput v0, p0, Landroid/os/BatteryStats$HistoryPrinter;->oldStatus:I

    .line 2048
    const-string v0, " status="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2049
    iget v0, p0, Landroid/os/BatteryStats$HistoryPrinter;->oldStatus:I

    packed-switch v0, :pswitch_data_0

    .line 2066
    iget v0, p0, Landroid/os/BatteryStats$HistoryPrinter;->oldStatus:I

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 2070
    :cond_4
    :goto_3
    iget v0, p0, Landroid/os/BatteryStats$HistoryPrinter;->oldHealth:I

    iget-byte v1, p2, Landroid/os/BatteryStats$HistoryItem;->batteryHealth:B

    if-eq v0, v1, :cond_5

    .line 2071
    iget-byte v0, p2, Landroid/os/BatteryStats$HistoryItem;->batteryHealth:B

    iput v0, p0, Landroid/os/BatteryStats$HistoryPrinter;->oldHealth:I

    .line 2072
    const-string v0, " health="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2073
    iget v0, p0, Landroid/os/BatteryStats$HistoryPrinter;->oldHealth:I

    packed-switch v0, :pswitch_data_1

    .line 2093
    iget v0, p0, Landroid/os/BatteryStats$HistoryPrinter;->oldHealth:I

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 2097
    :cond_5
    :goto_4
    iget v0, p0, Landroid/os/BatteryStats$HistoryPrinter;->oldPlug:I

    iget-byte v1, p2, Landroid/os/BatteryStats$HistoryItem;->batteryPlugType:B

    if-eq v0, v1, :cond_6

    .line 2098
    iget-byte v0, p2, Landroid/os/BatteryStats$HistoryItem;->batteryPlugType:B

    iput v0, p0, Landroid/os/BatteryStats$HistoryPrinter;->oldPlug:I

    .line 2099
    const-string v0, " plug="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2100
    iget v0, p0, Landroid/os/BatteryStats$HistoryPrinter;->oldPlug:I

    packed-switch v0, :pswitch_data_2

    .line 2111
    iget v0, p0, Landroid/os/BatteryStats$HistoryPrinter;->oldPlug:I

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 2115
    :cond_6
    :goto_5
    iget v0, p0, Landroid/os/BatteryStats$HistoryPrinter;->oldTemp:I

    iget-char v1, p2, Landroid/os/BatteryStats$HistoryItem;->batteryTemperature:C

    if-eq v0, v1, :cond_7

    .line 2116
    iget-char v0, p2, Landroid/os/BatteryStats$HistoryItem;->batteryTemperature:C

    iput v0, p0, Landroid/os/BatteryStats$HistoryPrinter;->oldTemp:I

    .line 2117
    const-string v0, " temp="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2118
    iget v0, p0, Landroid/os/BatteryStats$HistoryPrinter;->oldTemp:I

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 2120
    :cond_7
    iget v0, p0, Landroid/os/BatteryStats$HistoryPrinter;->oldVolt:I

    iget-char v1, p2, Landroid/os/BatteryStats$HistoryItem;->batteryVoltage:C

    if-eq v0, v1, :cond_8

    .line 2121
    iget-char v0, p2, Landroid/os/BatteryStats$HistoryItem;->batteryVoltage:C

    iput v0, p0, Landroid/os/BatteryStats$HistoryPrinter;->oldVolt:I

    .line 2122
    const-string v0, " volt="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2123
    iget v0, p0, Landroid/os/BatteryStats$HistoryPrinter;->oldVolt:I

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 2125
    :cond_8
    iget v0, p0, Landroid/os/BatteryStats$HistoryPrinter;->oldState:I

    iget v1, p2, Landroid/os/BatteryStats$HistoryItem;->states:I

    sget-object v2, Landroid/os/BatteryStats;->HISTORY_STATE_DESCRIPTIONS:[Landroid/os/BatteryStats$BitDescription;

    invoke-static {p1, v0, v1, v2}, Landroid/os/BatteryStats;->printBitDescriptions(Ljava/io/PrintWriter;II[Landroid/os/BatteryStats$BitDescription;)V

    .line 2127
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    goto/16 :goto_0

    .line 2035
    :cond_9
    iget-byte v0, p2, Landroid/os/BatteryStats$HistoryItem;->batteryLevel:B

    const/16 v1, 0x64

    if-ge v0, v1, :cond_2

    const-string v0, "0"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 2039
    :cond_a
    iget v0, p2, Landroid/os/BatteryStats$HistoryItem;->states:I

    const/16 v1, 0x100

    if-ge v0, v1, :cond_b

    const-string v0, "000000"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    goto/16 :goto_2

    .line 2040
    :cond_b
    iget v0, p2, Landroid/os/BatteryStats$HistoryItem;->states:I

    const/16 v1, 0x1000

    if-ge v0, v1, :cond_c

    const-string v0, "00000"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    goto/16 :goto_2

    .line 2041
    :cond_c
    iget v0, p2, Landroid/os/BatteryStats$HistoryItem;->states:I

    const/high16 v1, 0x1

    if-ge v0, v1, :cond_d

    const-string v0, "0000"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    goto/16 :goto_2

    .line 2042
    :cond_d
    iget v0, p2, Landroid/os/BatteryStats$HistoryItem;->states:I

    const/high16 v1, 0x10

    if-ge v0, v1, :cond_e

    const-string v0, "000"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    goto/16 :goto_2

    .line 2043
    :cond_e
    iget v0, p2, Landroid/os/BatteryStats$HistoryItem;->states:I

    const/high16 v1, 0x100

    if-ge v0, v1, :cond_f

    const-string v0, "00"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    goto/16 :goto_2

    .line 2044
    :cond_f
    iget v0, p2, Landroid/os/BatteryStats$HistoryItem;->states:I

    const/high16 v1, 0x1000

    if-ge v0, v1, :cond_3

    const-string v0, "0"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    goto/16 :goto_2

    .line 2051
    :pswitch_0
    const-string/jumbo v0, "unknown"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    goto/16 :goto_3

    .line 2054
    :pswitch_1
    const-string v0, "charging"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    goto/16 :goto_3

    .line 2057
    :pswitch_2
    const-string v0, "discharging"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    goto/16 :goto_3

    .line 2060
    :pswitch_3
    const-string/jumbo v0, "not-charging"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    goto/16 :goto_3

    .line 2063
    :pswitch_4
    const-string v0, "full"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    goto/16 :goto_3

    .line 2075
    :pswitch_5
    const-string/jumbo v0, "unknown"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    goto/16 :goto_4

    .line 2078
    :pswitch_6
    const-string v0, "good"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    goto/16 :goto_4

    .line 2081
    :pswitch_7
    const-string/jumbo v0, "overheat"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    goto/16 :goto_4

    .line 2084
    :pswitch_8
    const-string v0, "dead"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    goto/16 :goto_4

    .line 2087
    :pswitch_9
    const-string/jumbo v0, "over-voltage"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    goto/16 :goto_4

    .line 2090
    :pswitch_a
    const-string v0, "failure"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    goto/16 :goto_4

    .line 2102
    :pswitch_b
    const-string/jumbo v0, "none"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    goto/16 :goto_5

    .line 2105
    :pswitch_c
    const-string v0, "ac"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    goto/16 :goto_5

    .line 2108
    :pswitch_d
    const-string/jumbo v0, "usb"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    goto/16 :goto_5

    .line 2049
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch

    .line 2073
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
    .end packed-switch

    .line 2100
    :pswitch_data_2
    .packed-switch 0x0
        :pswitch_b
        :pswitch_c
        :pswitch_d
    .end packed-switch
.end method
