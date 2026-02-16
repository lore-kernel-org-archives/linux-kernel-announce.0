Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 218FF24BBFD
	for <linux-kernel-announce@vger.kernel.org>; Mon, 16 Feb 2026 09:25:26 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771233927; cv=none; b=bYvIYHaN+LSSjxSrQjn8Nz544Nt1wXrdHy+3eRCpn7i0dSp7h++D1II2toBtW6raOb/+Upre7ThXAcIu+yv+IomMLkAuXO4crgTJbJvh1iGMb6G44LPSD815L0qdpbjRkLtOv4OeDFVEcUCoP/OM55hZPuD6uBwA3G3NcOW1Tag=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771233927; c=relaxed/simple;
	bh=peX8nIsK7I+LD+ZvHcRClAPMYiu1If6Qk5p4Z5fzMuE=;
	h=Content-Type:MIME-Version:Subject:From:To:Date:Message-Id; b=HrDeIJ2UDCZVrAJzW5X0wc+syzJyyJZd5izUMdho7Vi/PtuAjraGVuqrWV7UZinGEI2Lu1lkyLu18//0HuHH/qIV0h18MytQtUbAiV3Or2jCXqzR/jI6R/bYAexok20wOa/JBvluCdpubLk69sLmVgPfdslEePjKSo0NrTjo3Do=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=linux.kernel.org;
	s=subspace; t=1771233927;
	bh=peX8nIsK7I+LD+ZvHcRClAPMYiu1If6Qk5p4Z5fzMuE=;
	h=Subject:From:To:Date:From;
	b=FPOkaSzQiHTpIZ3RPuZBMNKinqlEQbZTz7b53NO0Bm/yF3b73uF3RmOnvxCtZ6Fyq
	 ZVXKl/KS2NyWOXVygKJRma7DCpwktwoRlnpN+lt/R3KZ+wynaw2zKKPYx37yUfvaSA
	 ZJcTB9N8JaraHl3uB1zthTTL/hztE1wz0gwRNgDM=
Received: by smtp.kernel.org (Postfix) with ESMTPSA id D0895C116C6
	for <linux-kernel-announce@vger.kernel.org>; Mon, 16 Feb 2026 09:25:26 +0000 (UTC)
Received: from [10.30.226.235] (localhost [IPv6:::1])
	by aws-us-west-2-korg-oddjob-rhel9-1.codeaurora.org (Postfix) with ESMTP id 879DF3930922
	for <linux-kernel-announce@vger.kernel.org>; Mon, 16 Feb 2026 09:25:20 +0000 (UTC)
Content-Type: text/plain; charset="us-ascii"
Precedence: bulk
X-Mailing-List: linux-kernel-announce@vger.kernel.org
List-Id: <linux-kernel-announce.vger.kernel.org>
List-Subscribe: <mailto:linux-kernel-announce+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-kernel-announce+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Subject: Linux kernel 6.19.1 released
From: Linux Kernel Distribution System <kdist@linux.kernel.org>
To: linux-kernel-announce@vger.kernel.org
Date: Mon, 16 Feb 2026 09:25:19 +0000
Message-Id: <20260216092519.release-6.19.1@kdist.linux.kernel.org>
X-Linux-Kernel-Version: 6.19.1
X-Linux-Kernel-Full-URL: https://cdn.kernel.org/pub/linux/kernel/v6.x/linux-6.19.1.tar.xz
X-Linux-Kernel-Patch-URL: https://cdn.kernel.org/pub/linux/kernel/v6.x/patch-6.19.1.xz

Linux kernel version 6.19.1 is now available:

Full source:    https://cdn.kernel.org/pub/linux/kernel/v6.x/linux-6.19.1.tar.xz
Patch:          https://cdn.kernel.org/pub/linux/kernel/v6.x/patch-6.19.1.xz
PGP Signature:  https://cdn.kernel.org/pub/linux/kernel/v6.x/linux-6.19.1.tar.sign

You can view the summary of the changes at the following URL:
https://git.kernel.org/stable/ds/v6.19.1/v6.19

