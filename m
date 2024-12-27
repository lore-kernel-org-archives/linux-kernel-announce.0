Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 31E6B156C71
	for <linux-kernel-announce@vger.kernel.org>; Fri, 27 Dec 2024 13:20:29 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1735305630; cv=none; b=uaasJ0qXJPHD2ASelUnO3F5/Iw+P2CQLg/I1UmsZw/0D4YoHS6+CSWZMA2zC8aTt0z3lE1Mg+Y3KPDkdzGEEe0vsveGvVD7gUBHIttiNGOXzl7xuRlzVsIBoxXcLlzHaQCDlzBdRLPTD9BvSpz/sgowMghTASGovXsmS6vr8DHA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1735305630; c=relaxed/simple;
	bh=ulbDztm0Fxsl+twHoMpp3Hk1vxFO3PA+tC8s1dd3yi4=;
	h=Content-Type:MIME-Version:Subject:From:To:Date:Message-Id; b=DhYLbabeUV6hzioPexlztT9YAVmhrKpJpzBhzTaQZxjyV02LWvXGf+zppDYt5xkqCUVJDplsIZQSwu8yEaYehGSJLI1QZnioASd8R5/AB567MkDZXiSXW9lnJ2vu8CSR1nkg61W7PBDQkLmiNNlCmJhOSS3dM24HmXbLjtS7t+A=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=linux.kernel.org;
	s=subspace; t=1735305630;
	bh=ulbDztm0Fxsl+twHoMpp3Hk1vxFO3PA+tC8s1dd3yi4=;
	h=Subject:From:To:Date:From;
	b=RE8WDG8WwAFLRl86IbvFLPievPMgeGT4sIhlLZVk3B+U95MS8S9mZ9mquJFoHloKj
	 /cT9VdljxkRzDJREsrQB2nkmPnuJOvWfA8LIMRJUIr2K9U8p+be1IkVQj6TSnuNk/Q
	 6udqysNjlIet3IZhcOJ8zs1MsrT3+jGjhWoyf5SA=
Received: by smtp.kernel.org (Postfix) with ESMTPSA id BA752C4CED0
	for <linux-kernel-announce@vger.kernel.org>; Fri, 27 Dec 2024 13:20:29 +0000 (UTC)
Received: from [10.30.226.235] (localhost [IPv6:::1])
	by aws-us-west-2-korg-oddjob-rhel9-1.codeaurora.org (Postfix) with ESMTP id F0759380A955
	for <linux-kernel-announce@vger.kernel.org>; Fri, 27 Dec 2024 13:20:49 +0000 (UTC)
Content-Type: text/plain; charset="us-ascii"
Precedence: bulk
X-Mailing-List: linux-kernel-announce@vger.kernel.org
List-Id: <linux-kernel-announce.vger.kernel.org>
List-Subscribe: <mailto:linux-kernel-announce+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-kernel-announce+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Subject: Linux kernel 6.6.68 released
From: Linux Kernel Distribution System <kdist@linux.kernel.org>
To: linux-kernel-announce@vger.kernel.org
Date: Fri, 27 Dec 2024 13:20:48 +0000
Message-Id: <20241227132048.release-6.6.68@kdist.linux.kernel.org>
X-Linux-Kernel-Version: 6.6.68
X-Linux-Kernel-Full-URL: https://cdn.kernel.org/pub/linux/kernel/v6.x/linux-6.6.68.tar.xz
X-Linux-Kernel-Patch-URL: https://cdn.kernel.org/pub/linux/kernel/v6.x/patch-6.6.68.xz

Linux kernel version 6.6.68 is now available:

Full source:    https://cdn.kernel.org/pub/linux/kernel/v6.x/linux-6.6.68.tar.xz
Patch:          https://cdn.kernel.org/pub/linux/kernel/v6.x/patch-6.6.68.xz
PGP Signature:  https://cdn.kernel.org/pub/linux/kernel/v6.x/linux-6.6.68.tar.sign

You can view the summary of the changes at the following URL:
https://git.kernel.org/stable/ds/v6.6.68/v6.6.67

