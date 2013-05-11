.class public Lcom/htc/videowidget/videoview/MessageFactory;
.super Ljava/lang/Object;
.source "MessageFactory.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "MessageFactory"

.field public static final messageBoolean:Ljava/lang/String; = "boolean"

.field public static final messageErrFramework:Ljava/lang/String; = "framework_err"

.field public static final messageErrImp:Ljava/lang/String; = "impl_err"

.field public static final messageInt:Ljava/lang/String; = "int"

.field public static final messageInt2:Ljava/lang/String; = "int2"

.field public static final messageStr:Ljava/lang/String; = "str"

.field public static final messageUri:Ljava/lang/String; = "uri"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static removeMessage(ILandroid/os/Handler;)V
    .locals 0
    .parameter "id"
    .parameter "handler"

    .prologue
    .line 154
    if-eqz p1, :cond_0

    .line 156
    invoke-virtual {p1, p0}, Landroid/os/Handler;->removeMessages(I)V

    .line 157
    :cond_0
    return-void
.end method

.method public static sendMessage(ILandroid/os/Handler;)V
    .locals 1
    .parameter "id"
    .parameter "handler"

    .prologue
    .line 25
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 26
    .local v0, message:Landroid/os/Message;
    iput p0, v0, Landroid/os/Message;->what:I

    .line 27
    if-eqz p1, :cond_0

    .line 28
    invoke-virtual {p1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 29
    :cond_0
    return-void
.end method

.method public static sendMessageDelay(ILandroid/os/Handler;I)V
    .locals 3
    .parameter "id"
    .parameter "handler"
    .parameter "delay"

    .prologue
    .line 57
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 58
    .local v0, message:Landroid/os/Message;
    iput p0, v0, Landroid/os/Message;->what:I

    .line 59
    if-eqz p1, :cond_0

    .line 60
    int-to-long v1, p2

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 61
    :cond_0
    return-void
.end method

.method public static sendMessageWith2Int(IIILandroid/os/Handler;)V
    .locals 3
    .parameter "id"
    .parameter "code1"
    .parameter "code2"
    .parameter "handler"

    .prologue
    .line 87
    new-instance v1, Landroid/os/Message;

    invoke-direct {v1}, Landroid/os/Message;-><init>()V

    .line 88
    .local v1, message:Landroid/os/Message;
    iput p0, v1, Landroid/os/Message;->what:I

    .line 89
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 90
    .local v0, bundle:Landroid/os/Bundle;
    const-string v2, "int"

    invoke-virtual {v0, v2, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 91
    const-string v2, "int2"

    invoke-virtual {v0, v2, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 92
    invoke-virtual {v1, v0}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 93
    if-eqz p3, :cond_0

    .line 94
    invoke-virtual {p3, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 95
    :cond_0
    return-void
.end method

.method public static sendMessageWithBoolean(IZLandroid/os/Handler;)V
    .locals 3
    .parameter "id"
    .parameter "b"
    .parameter "handler"

    .prologue
    .line 99
    new-instance v1, Landroid/os/Message;

    invoke-direct {v1}, Landroid/os/Message;-><init>()V

    .line 100
    .local v1, message:Landroid/os/Message;
    iput p0, v1, Landroid/os/Message;->what:I

    .line 101
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 102
    .local v0, bundle:Landroid/os/Bundle;
    const-string v2, "boolean"

    invoke-virtual {v0, v2, p1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 103
    invoke-virtual {v1, v0}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 104
    if-eqz p2, :cond_0

    .line 105
    invoke-virtual {p2, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 106
    :cond_0
    return-void
.end method

.method public static sendMessageWithBooleanDelay(IZLandroid/os/Handler;I)V
    .locals 4
    .parameter "id"
    .parameter "b"
    .parameter "handler"
    .parameter "delay"

    .prologue
    .line 120
    new-instance v1, Landroid/os/Message;

    invoke-direct {v1}, Landroid/os/Message;-><init>()V

    .line 121
    .local v1, message:Landroid/os/Message;
    iput p0, v1, Landroid/os/Message;->what:I

    .line 122
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 123
    .local v0, bundle:Landroid/os/Bundle;
    const-string v2, "boolean"

    invoke-virtual {v0, v2, p1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 124
    invoke-virtual {v1, v0}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 125
    if-eqz p2, :cond_0

    .line 126
    int-to-long v2, p3

    invoke-virtual {p2, v1, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 127
    :cond_0
    return-void
.end method

.method public static sendMessageWithError(IIIILandroid/os/Handler;)V
    .locals 3
    .parameter "id"
    .parameter "code"
    .parameter "arg1"
    .parameter "arg2"
    .parameter "handler"

    .prologue
    .line 44
    new-instance v1, Landroid/os/Message;

    invoke-direct {v1}, Landroid/os/Message;-><init>()V

    .line 45
    .local v1, message:Landroid/os/Message;
    iput p0, v1, Landroid/os/Message;->what:I

    .line 46
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 47
    .local v0, bundle:Landroid/os/Bundle;
    const-string v2, "int"

    invoke-virtual {v0, v2, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 48
    const-string v2, "framework_err"

    invoke-virtual {v0, v2, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 49
    const-string v2, "impl_err"

    invoke-virtual {v0, v2, p3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 50
    invoke-virtual {v1, v0}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 51
    if-eqz p4, :cond_0

    .line 52
    invoke-virtual {p4, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 53
    :cond_0
    return-void
.end method

.method public static sendMessageWithInt(IILandroid/os/Handler;)V
    .locals 3
    .parameter "id"
    .parameter "code"
    .parameter "handler"

    .prologue
    .line 76
    new-instance v1, Landroid/os/Message;

    invoke-direct {v1}, Landroid/os/Message;-><init>()V

    .line 77
    .local v1, message:Landroid/os/Message;
    iput p0, v1, Landroid/os/Message;->what:I

    .line 78
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 79
    .local v0, bundle:Landroid/os/Bundle;
    const-string v2, "int"

    invoke-virtual {v0, v2, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 80
    invoke-virtual {v1, v0}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 81
    if-eqz p2, :cond_0

    .line 82
    invoke-virtual {p2, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 83
    :cond_0
    return-void
.end method

.method public static sendMessageWithIntBoolean(IIZLandroid/os/Handler;)V
    .locals 3
    .parameter "id"
    .parameter "code"
    .parameter "b"
    .parameter "handler"

    .prologue
    .line 130
    new-instance v1, Landroid/os/Message;

    invoke-direct {v1}, Landroid/os/Message;-><init>()V

    .line 131
    .local v1, message:Landroid/os/Message;
    iput p0, v1, Landroid/os/Message;->what:I

    .line 132
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 133
    .local v0, bundle:Landroid/os/Bundle;
    const-string v2, "int"

    invoke-virtual {v0, v2, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 134
    const-string v2, "boolean"

    invoke-virtual {v0, v2, p2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 135
    invoke-virtual {v1, v0}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 136
    if-eqz p3, :cond_0

    .line 137
    invoke-virtual {p3, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 138
    :cond_0
    return-void
.end method

.method public static sendMessageWithIntDelay(IILandroid/os/Handler;I)V
    .locals 4
    .parameter "id"
    .parameter "code"
    .parameter "handler"
    .parameter "delay"

    .prologue
    .line 110
    new-instance v1, Landroid/os/Message;

    invoke-direct {v1}, Landroid/os/Message;-><init>()V

    .line 111
    .local v1, message:Landroid/os/Message;
    iput p0, v1, Landroid/os/Message;->what:I

    .line 112
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 113
    .local v0, bundle:Landroid/os/Bundle;
    const-string v2, "int"

    invoke-virtual {v0, v2, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 114
    invoke-virtual {v1, v0}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 115
    if-eqz p2, :cond_0

    .line 116
    int-to-long v2, p3

    invoke-virtual {p2, v1, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 117
    :cond_0
    return-void
.end method

.method public static sendMessageWithString(ILjava/lang/String;Landroid/os/Handler;)V
    .locals 3
    .parameter "id"
    .parameter "str"
    .parameter "handler"

    .prologue
    .line 65
    new-instance v1, Landroid/os/Message;

    invoke-direct {v1}, Landroid/os/Message;-><init>()V

    .line 66
    .local v1, message:Landroid/os/Message;
    iput p0, v1, Landroid/os/Message;->what:I

    .line 67
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 68
    .local v0, bundle:Landroid/os/Bundle;
    const-string v2, "str"

    invoke-virtual {v0, v2, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 69
    invoke-virtual {v1, v0}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 70
    if-eqz p2, :cond_0

    .line 71
    invoke-virtual {p2, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 72
    :cond_0
    return-void
.end method

.method public static sendMessageWithStringBoolean(ILjava/lang/String;ZLandroid/os/Handler;)V
    .locals 3
    .parameter "id"
    .parameter "str"
    .parameter "b"
    .parameter "handler"

    .prologue
    .line 142
    new-instance v1, Landroid/os/Message;

    invoke-direct {v1}, Landroid/os/Message;-><init>()V

    .line 143
    .local v1, message:Landroid/os/Message;
    iput p0, v1, Landroid/os/Message;->what:I

    .line 144
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 145
    .local v0, bundle:Landroid/os/Bundle;
    const-string v2, "str"

    invoke-virtual {v0, v2, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 146
    const-string v2, "boolean"

    invoke-virtual {v0, v2, p2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 147
    invoke-virtual {v1, v0}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 148
    if-eqz p3, :cond_0

    .line 149
    invoke-virtual {p3, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 150
    :cond_0
    return-void
.end method

.method public static sendMessageWithUri(ILandroid/net/Uri;Landroid/os/Handler;)V
    .locals 3
    .parameter "id"
    .parameter "uri"
    .parameter "handler"

    .prologue
    .line 33
    new-instance v1, Landroid/os/Message;

    invoke-direct {v1}, Landroid/os/Message;-><init>()V

    .line 34
    .local v1, message:Landroid/os/Message;
    iput p0, v1, Landroid/os/Message;->what:I

    .line 35
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 36
    .local v0, bundle:Landroid/os/Bundle;
    const-string v2, "str"

    invoke-virtual {v0, v2, p1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 37
    invoke-virtual {v1, v0}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 38
    if-eqz p2, :cond_0

    .line 39
    invoke-virtual {p2, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 40
    :cond_0
    return-void
.end method
