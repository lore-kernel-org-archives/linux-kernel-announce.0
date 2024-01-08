Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E0E5C13FF0
	for <linux-kernel-announce@vger.kernel.org>; Mon,  8 Jan 2024 10:40:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=linux.kernel.org;
	s=subspace; t=1704710439;
	bh=jnlZMsgCjMlRfBGuR3svivEdUcCw/bh8ylHAx2f1M3s=;
	h=Subject:From:To:Date:From;
	b=gDPEhyLlrabHgd/1FFRzUfTGYFmmoK3G3orlIcQvbdXkbSrCIl8Kr8HENCMRykzAR
	 InklsqShjiyuwebH490X4fH5LRKTu2yerdJ2fIwU9O+B83UqQ5uYT18FQLgIn5JKBe
	 OrqwkRZIq5J3PQvZipShUTw1ZJkGQ8T79EVJRX74=
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6104EC433C8
	for <linux-kernel-announce@vger.kernel.org>; Mon,  8 Jan 2024 10:40:39 +0000 (UTC)
Received: from aws-us-west-2-korg-oddjob-1.ci.codeaurora.org (localhost.localdomain [127.0.0.1])
	by aws-us-west-2-korg-oddjob-1.ci.codeaurora.org (Postfix) with ESMTP id 45451C4166F
	for <linux-kernel-announce@vger.kernel.org>; Mon,  8 Jan 2024 10:40:39 +0000 (UTC)
Content-Type: text/plain; charset="us-ascii"
Precedence: bulk
X-Mailing-List: linux-kernel-announce@vger.kernel.org
List-Id: <linux-kernel-announce.vger.kernel.org>
List-Subscribe: <mailto:linux-kernel-announce+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-kernel-announce+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Subject: Linux kernel 4.14.335 released
From: Linux Kernel Distribution System <kdist@linux.kernel.org>
To: linux-kernel-announce@vger.kernel.org
Date: Mon, 08 Jan 2024 10:40:39 +0000
Message-Id: <20240108104039.release-4.14.335@kdist.linux.kernel.org>
X-Linux-Kernel-Version: 4.14.335
X-Linux-Kernel-Full-URL: https://cdn.kernel.org/pub/linux/kernel/v4.x/linux-4.14.335.tar.xz
X-Linux-Kernel-Patch-URL: https://cdn.kernel.org/pub/linux/kernel/v4.x/patch-4.14.335.xz

Linux kernel version 4.14.335 is now available:

Full source:    https://cdn.kernel.org/pub/linux/kernel/v4.x/linux-4.14.335.tar.xz
Patch:          https://cdn.kernel.org/pub/linux/kernel/v4.x/patch-4.14.335.xz
PGP Signature:  https://cdn.kernel.org/pub/linux/kernel/v4.x/linux-4.14.335.tar.sign

You can view the summary of the changes at the following URL:
https://git.kernel.org/stable/ds/v4.14.335/v4.14.334

