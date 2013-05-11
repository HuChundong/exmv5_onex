.class Lcom/htc/util/calendar/DeleteEventHelper$EventInfo;
.super Ljava/lang/Object;
.source "DeleteEventHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/util/calendar/DeleteEventHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "EventInfo"
.end annotation


# instance fields
.field public mBegin:J

.field public mEnd:J

.field public mEventId:J

.field public mWhich:I

.field final synthetic this$0:Lcom/htc/util/calendar/DeleteEventHelper;


# direct methods
.method constructor <init>(Lcom/htc/util/calendar/DeleteEventHelper;JJJI)V
    .locals 0
    .parameter
    .parameter "eventId"
    .parameter "begin"
    .parameter "end"
    .parameter "which"

    .prologue
    .line 701
    iput-object p1, p0, Lcom/htc/util/calendar/DeleteEventHelper$EventInfo;->this$0:Lcom/htc/util/calendar/DeleteEventHelper;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 702
    iput-wide p2, p0, Lcom/htc/util/calendar/DeleteEventHelper$EventInfo;->mEventId:J

    .line 703
    iput-wide p4, p0, Lcom/htc/util/calendar/DeleteEventHelper$EventInfo;->mBegin:J

    .line 704
    iput-wide p6, p0, Lcom/htc/util/calendar/DeleteEventHelper$EventInfo;->mEnd:J

    .line 705
    iput p8, p0, Lcom/htc/util/calendar/DeleteEventHelper$EventInfo;->mWhich:I

    .line 706
    return-void
.end method
