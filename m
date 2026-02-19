Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5C7FF26ED35
	for <linux-kernel-announce@vger.kernel.org>; Thu, 19 Feb 2026 16:00:28 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771516828; cv=none; b=fZOS/teIFnXOlZiGOW16YePxg7By2NM45SKsg5ipeb6GwO0IfKF+dqBr5iOuefZPG6zcQkuwd6BKish8b4eIa1D3+IF0J/b0Gnl7WRox88z7MQ8n4uPNrXpV2s7c87eaDwuiu5Wfn35LJehN0FwQfYUCL/qrd0O5UcDKQTdhaqE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771516828; c=relaxed/simple;
	bh=vjSwflYapOqPc5tfitpWhheE6Ea5tDmWpYFJf4AzmOw=;
	h=Content-Type:MIME-Version:Subject:From:To:Date:Message-Id; b=uW7jyKItJjIlJBrDDolljB3vNqHeakI37HZlIgq/GaZUSZTTB/HpxNz2+OWiw4ckRBKqoPZzB+hRfLAXe1bgvHFXsh4JUq+Bn+Qx0m8dia/u48BPJZvsf/bnsZI5mGoFNyZ6n1LKEV1tfC4ho6tMDYSNqhO2daJlCIbGiEoWyNM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=linux.kernel.org;
	s=subspace; t=1771516828;
	bh=vjSwflYapOqPc5tfitpWhheE6Ea5tDmWpYFJf4AzmOw=;
	h=Subject:From:To:Date:From;
	b=wh2QkSlAbJXzomytCj4pm1+lY/aKJayokZ2/dOFug7NAIL8eZRcv8RmVnOzF1shr+
	 2/EzLMj60YpHDJCDjGy4HxAHCpQY0V1Dg1fVmhLGLFFwzm91Z8dq7CwQPOANORHzTK
	 shca9yKCapMczkuQ/TJtjAJ+t6CEDZu54syUeW/U=
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 33818C19421
	for <linux-kernel-announce@vger.kernel.org>; Thu, 19 Feb 2026 16:00:28 +0000 (UTC)
Received: from [10.30.226.235] (localhost [IPv6:::1])
	by aws-us-west-2-korg-oddjob-rhel9-1.codeaurora.org (Postfix) with ESMTP id 4A90B380CEF3
	for <linux-kernel-announce@vger.kernel.org>; Thu, 19 Feb 2026 16:00:20 +0000 (UTC)
Content-Type: text/plain; charset="us-ascii"
Precedence: bulk
X-Mailing-List: linux-kernel-announce@vger.kernel.org
List-Id: <linux-kernel-announce.vger.kernel.org>
List-Subscribe: <mailto:linux-kernel-announce+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-kernel-announce+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Subject: Linux kernel 6.19.3 released
From: Linux Kernel Distribution System <kdist@linux.kernel.org>
To: linux-kernel-announce@vger.kernel.org
Date: Thu, 19 Feb 2026 16:00:18 +0000
Message-Id: <20260219160018.release-6.19.3@kdist.linux.kernel.org>
X-Linux-Kernel-Version: 6.19.3
X-Linux-Kernel-Full-URL: https://cdn.kernel.org/pub/linux/kernel/v6.x/linux-6.19.3.tar.xz
X-Linux-Kernel-Patch-URL: https://cdn.kernel.org/pub/linux/kernel/v6.x/patch-6.19.3.xz

Linux kernel version 6.19.3 is now available:

Full source:    https://cdn.kernel.org/pub/linux/kernel/v6.x/linux-6.19.3.tar.xz
Patch:          https://cdn.kernel.org/pub/linux/kernel/v6.x/patch-6.19.3.xz
PGP Signature:  https://cdn.kernel.org/pub/linux/kernel/v6.x/linux-6.19.3.tar.sign

You can view the summary of the changes at the following URL:
https://git.kernel.org/stable/ds/v6.19.3/v6.19.2

