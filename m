Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 74A67158D6B
	for <linux-kernel-announce@vger.kernel.org>; Wed, 10 Apr 2024 15:00:45 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1712761245; cv=none; b=j3J3NRNPcecPFDNdinPVgVCqlp7+VPB//JhT1jZAvr6BA3j+Eov3bkR1VpMS/yVZ0DIK+YQMXNjyPKJMTzOi2+BlQoMy3u4qfz4ar7reaM7HJLA/uc8ToCJafqWiqffxn+ENRyVmILNjQCGlV8jqUZefqbxzNHdJOkd8CT02s/M=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1712761245; c=relaxed/simple;
	bh=3PImSErdtRDbaCaM+mQ37tWxaMozYvpV/NWw3YtOjeQ=;
	h=Content-Type:MIME-Version:Subject:From:To:Date:Message-Id; b=pi7ZZQsJTfQ3KgfKKUodC55WbwOgTesvaTjQ6Ci5/U5DaeNIrS8mwbIYNamg4nplcdb7IhqgjztCI0y7HLwsEeORQAQGMFDYeSxk7WV9JwOaK11f/VF9MO92irGvuQrPpqCX5US9kS1dlARGxJSnsptKcRHVzrOXhte33JtQtFA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=linux.kernel.org;
	s=subspace; t=1712761245;
	bh=3PImSErdtRDbaCaM+mQ37tWxaMozYvpV/NWw3YtOjeQ=;
	h=Subject:From:To:Date:From;
	b=Sqzua1g+xzdQG777Y+j7gAqsl6Vgdm3qQWk8p+CaVWozfKgie0cHWFMUM2qAs9cGR
	 7XChaBEAz2xnELy8bDjMrL6NExVCIpgJBVsy0HWeqMHBLk7ijW3jVPSvIdWiAGyNBS
	 PUuz9KnLzDyErUT1PboHLXETzF60cLPKlEjPf9/k=
Received: by smtp.kernel.org (Postfix) with ESMTPS id 0CC90C433F1
	for <linux-kernel-announce@vger.kernel.org>; Wed, 10 Apr 2024 15:00:45 +0000 (UTC)
Received: from aws-us-west-2-korg-oddjob-1.ci.codeaurora.org (localhost.localdomain [127.0.0.1])
	by aws-us-west-2-korg-oddjob-1.ci.codeaurora.org (Postfix) with ESMTP id F0522D60311
	for <linux-kernel-announce@vger.kernel.org>; Wed, 10 Apr 2024 15:00:44 +0000 (UTC)
Content-Type: text/plain; charset="us-ascii"
Precedence: bulk
X-Mailing-List: linux-kernel-announce@vger.kernel.org
List-Id: <linux-kernel-announce.vger.kernel.org>
List-Subscribe: <mailto:linux-kernel-announce+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-kernel-announce+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Subject: Linux kernel 6.8.5 released
From: Linux Kernel Distribution System <kdist@linux.kernel.org>
To: linux-kernel-announce@vger.kernel.org
Date: Wed, 10 Apr 2024 15:00:44 +0000
Message-Id: <20240410150044.release-6.8.5@kdist.linux.kernel.org>
X-Linux-Kernel-Version: 6.8.5
X-Linux-Kernel-Full-URL: https://cdn.kernel.org/pub/linux/kernel/v6.x/linux-6.8.5.tar.xz
X-Linux-Kernel-Patch-URL: https://cdn.kernel.org/pub/linux/kernel/v6.x/patch-6.8.5.xz

Linux kernel version 6.8.5 is now available:

Full source:    https://cdn.kernel.org/pub/linux/kernel/v6.x/linux-6.8.5.tar.xz
Patch:          https://cdn.kernel.org/pub/linux/kernel/v6.x/patch-6.8.5.xz
PGP Signature:  https://cdn.kernel.org/pub/linux/kernel/v6.x/linux-6.8.5.tar.sign

You can view the summary of the changes at the following URL:
https://git.kernel.org/stable/ds/v6.8.5/v6.8.4

