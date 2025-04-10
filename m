Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CE77E26A1C3
	for <linux-kernel-announce@vger.kernel.org>; Thu, 10 Apr 2025 12:55:14 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744289714; cv=none; b=CTfca9gJ5pm3pzMXBIWVp3iBPH39JAcBmedPLlfpF2FMkxlyozB3dP3TKkQ8zwgIXtYoWIwTK1znJJCpNyroLFA/c4eziUboFqw4hA9rhEVMTYl6WQPARQdWyEUes2x/95Dvih/+m6jmkUUQcz47nGhMSz/SNAjADEi7lgzBwpw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744289714; c=relaxed/simple;
	bh=g6M5a9SZJUr3ASrA9mCC0NC1cRdGzXoFU+LjMHj2yIQ=;
	h=Content-Type:MIME-Version:Subject:From:To:Date:Message-Id; b=Y1MS4NeNSQflSvDDlJyI3YvQISTBhz0qPV2BVLRV/CnRMWymNbKwPCWqd89hKLTpamHxldkLP0EIu43yLG2aV353uHoWQYznNI3NbHzA4P7Z4/47KM/wxeeD2J5Qr4yOwHDEw7sAYEZ/vhgg3bhKpai/ZeTk2bz0kuVi9+/8/zY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=linux.kernel.org;
	s=subspace; t=1744289714;
	bh=g6M5a9SZJUr3ASrA9mCC0NC1cRdGzXoFU+LjMHj2yIQ=;
	h=Subject:From:To:Date:From;
	b=UGOfttCVL7j3RkVUDF/XOklRIkNHry6FdTZbMf0BZ5ku0aVvb3dVnpECaDW49lqqa
	 9ebl3LiROtmh4r5ErbYBVK+KODzrXkIEK018ifCQmcUtY2Kivgu1Wm8oQc8UZc1sjN
	 nGjz2i9yAfwvh+oMF+lOtOW1ZMxzcY1J3cHvXCkw=
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 99E65C4CEDD
	for <linux-kernel-announce@vger.kernel.org>; Thu, 10 Apr 2025 12:55:14 +0000 (UTC)
Received: from [10.30.226.235] (localhost [IPv6:::1])
	by aws-us-west-2-korg-oddjob-rhel9-1.codeaurora.org (Postfix) with ESMTP id 3DE10380CEF4
	for <linux-kernel-announce@vger.kernel.org>; Thu, 10 Apr 2025 12:55:53 +0000 (UTC)
Content-Type: text/plain; charset="us-ascii"
Precedence: bulk
X-Mailing-List: linux-kernel-announce@vger.kernel.org
List-Id: <linux-kernel-announce.vger.kernel.org>
List-Subscribe: <mailto:linux-kernel-announce+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-kernel-announce+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Subject: Linux kernel 5.15.180 released
From: Linux Kernel Distribution System <kdist@linux.kernel.org>
To: linux-kernel-announce@vger.kernel.org
Date: Thu, 10 Apr 2025 12:55:51 +0000
Message-Id: <20250410125551.release-5.15.180@kdist.linux.kernel.org>
X-Linux-Kernel-Version: 5.15.180
X-Linux-Kernel-Full-URL: https://cdn.kernel.org/pub/linux/kernel/v5.x/linux-5.15.180.tar.xz
X-Linux-Kernel-Patch-URL: https://cdn.kernel.org/pub/linux/kernel/v5.x/patch-5.15.180.xz

Linux kernel version 5.15.180 is now available:

Full source:    https://cdn.kernel.org/pub/linux/kernel/v5.x/linux-5.15.180.tar.xz
Patch:          https://cdn.kernel.org/pub/linux/kernel/v5.x/patch-5.15.180.xz
PGP Signature:  https://cdn.kernel.org/pub/linux/kernel/v5.x/linux-5.15.180.tar.sign

You can view the summary of the changes at the following URL:
https://git.kernel.org/stable/ds/v5.15.180/v5.15.179

