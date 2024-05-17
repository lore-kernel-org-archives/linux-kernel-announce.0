Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D38CE3AC01
	for <linux-kernel-announce@vger.kernel.org>; Fri, 17 May 2024 10:35:37 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1715942137; cv=none; b=Y4rhezsdAfkQ+ftKvjR7e2VVNRqMo3+G5DQJ8a2b+hj4aC36jFaUcBOWMZsRnKlb1qmduv0LLHpoArlLo+qA+2YVDJJ+4udM6xZFs3ml5IyiU06t8HakX33Q32LSbXeCJZzsNX7EBYtE7h4mrNyJMSYS1p2jE81TM+i5Mi8ohew=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1715942137; c=relaxed/simple;
	bh=gd+6F0YEcKWFjE7yGtwprEY9ECsgXXvG/0s/XgteLww=;
	h=Content-Type:MIME-Version:Subject:From:To:Date:Message-Id; b=mjhv9/PtwZuU99HLxz1fagz+2QXwcx0fWQT+AYOc/tXBhjobPxvMznC/KhgqajlUobarUMNXndB4dIGGiLeJqtRpWijT9Xo2WOissIeLMYL3o/Iyvi527/TfXony2KcjGyxwTCCvrZvsGy4uQjRD2hxseNVAKW6iw/d8xA8hOTo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=linux.kernel.org;
	s=subspace; t=1715942137;
	bh=gd+6F0YEcKWFjE7yGtwprEY9ECsgXXvG/0s/XgteLww=;
	h=Subject:From:To:Date:From;
	b=ccTJ4ZttCIZRmJ03O5+bLiWNwqHR/xkGHrcQitW7divlVg/ZshE63Y+MBX4RYqTkv
	 dpxiFtVzAGc92GHD1Kk6YRt/KkRmhLcO9ePK+KQdx+8kYA696h+0hC2uvwNAWd15oq
	 sUWuBv3EWnf6JcBdBVfkJAaPcdHs36t1ciwTwV0s=
Received: by smtp.kernel.org (Postfix) with ESMTPS id 84CB7C2BD11
	for <linux-kernel-announce@vger.kernel.org>; Fri, 17 May 2024 10:35:37 +0000 (UTC)
Received: from aws-us-west-2-korg-oddjob-1.ci.codeaurora.org (localhost.localdomain [127.0.0.1])
	by aws-us-west-2-korg-oddjob-1.ci.codeaurora.org (Postfix) with ESMTP id 6F919C54BB3
	for <linux-kernel-announce@vger.kernel.org>; Fri, 17 May 2024 10:35:37 +0000 (UTC)
Content-Type: text/plain; charset="us-ascii"
Precedence: bulk
X-Mailing-List: linux-kernel-announce@vger.kernel.org
List-Id: <linux-kernel-announce.vger.kernel.org>
List-Subscribe: <mailto:linux-kernel-announce+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-kernel-announce+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Subject: Linux kernel 6.8.10 released
From: Linux Kernel Distribution System <kdist@linux.kernel.org>
To: linux-kernel-announce@vger.kernel.org
Date: Fri, 17 May 2024 10:35:37 +0000
Message-Id: <20240517103537.release-6.8.10@kdist.linux.kernel.org>
X-Linux-Kernel-Version: 6.8.10
X-Linux-Kernel-Full-URL: https://cdn.kernel.org/pub/linux/kernel/v6.x/linux-6.8.10.tar.xz
X-Linux-Kernel-Patch-URL: https://cdn.kernel.org/pub/linux/kernel/v6.x/patch-6.8.10.xz

Linux kernel version 6.8.10 is now available:

Full source:    https://cdn.kernel.org/pub/linux/kernel/v6.x/linux-6.8.10.tar.xz
Patch:          https://cdn.kernel.org/pub/linux/kernel/v6.x/patch-6.8.10.xz
PGP Signature:  https://cdn.kernel.org/pub/linux/kernel/v6.x/linux-6.8.10.tar.sign

You can view the summary of the changes at the following URL:
https://git.kernel.org/stable/ds/v6.8.10/v6.8.9

