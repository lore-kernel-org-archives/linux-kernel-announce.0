Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E0C5A18AFC
	for <linux-kernel-announce@vger.kernel.org>; Sun, 11 May 2025 22:31:14 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747002679; cv=none; b=hCROoVSPd7Ne6brXKkheYARPeiuMWuBnWhQOh7A5Tnxam0kD6oXK9c7CKnIbN8+xb6yp5fM1iowsL8GOD/Z/Hrt0/4dnfn4gSNcRM2tL+ejSwxELs0f5ciTF0RaaZKuJbaguDn1eQ3iMZKNRE3llapreka5WbDwrzMSwYYqm7SA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747002679; c=relaxed/simple;
	bh=KagmHX23qcwJHzssF6MmQ7BnXdIJKb+nTwNHVk3zHgY=;
	h=Content-Type:MIME-Version:Subject:From:To:Date:Message-Id; b=paPOcVk0e9J9lwjq0BHoih69eLFX4+BvBRWqlkm5q6XRF90MJ6bjlwA0ujzPtqOqRAXi/NNjXomEb0kY1jQPU/dQDaqhqhzfiOSi8j0nQE3pjQFqUXilIU1EN1NlSs12c/2PZU9VaweMT1gejy5L0r4R6PelT41b0VozAHe9zxE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=linux.kernel.org;
	s=subspace; t=1747002678;
	bh=KagmHX23qcwJHzssF6MmQ7BnXdIJKb+nTwNHVk3zHgY=;
	h=Subject:From:To:Date:From;
	b=rSp5hlX6UcsNW7jKO0dmYY8CtbzKn3VWCUgvB8o4Dl2JnARp4VtrbLzEtN/LMONQB
	 XfYuQj7WfIIre5uBTMxinI0z71ayxen5Hgu2ofgiTQrvPKYDv8hHkIMB/jFXjtQv6Z
	 iiESoIq9c7QVB5JIX+/R1YjNoZ0/5XPuvJR/MZpM=
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 64B06C4CEE4
	for <linux-kernel-announce@vger.kernel.org>; Sun, 11 May 2025 22:31:14 +0000 (UTC)
Received: from [10.30.226.235] (localhost [IPv6:::1])
	by aws-us-west-2-korg-oddjob-rhel9-1.codeaurora.org (Postfix) with ESMTP id 7425739D60BA
	for <linux-kernel-announce@vger.kernel.org>; Sun, 11 May 2025 22:31:53 +0000 (UTC)
Content-Type: text/plain; charset="us-ascii"
Precedence: bulk
X-Mailing-List: linux-kernel-announce@vger.kernel.org
List-Id: <linux-kernel-announce.vger.kernel.org>
List-Subscribe: <mailto:linux-kernel-announce+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-kernel-announce+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Subject: Linux kernel 6.15-rc6 released
From: Linux Kernel Distribution System <kdist@linux.kernel.org>
To: linux-kernel-announce@vger.kernel.org
Date: Sun, 11 May 2025 22:31:51 +0000
Message-Id: <20250511223151.release-6.15-rc6@kdist.linux.kernel.org>
X-Linux-Kernel-Version: 6.15-rc6
X-Linux-Kernel-Full-URL: https://git.kernel.org/torvalds/t/linux-6.15-rc6.tar.gz
X-Linux-Kernel-Patch-URL: https://git.kernel.org/torvalds/p/v6.15-rc6/v6.14

Linux kernel version 6.15-rc6 is now available:

Full source:    https://git.kernel.org/torvalds/t/linux-6.15-rc6.tar.gz
Patch:          https://git.kernel.org/torvalds/p/v6.15-rc6/v6.14

You can view the summary of the changes at the following URL:
https://git.kernel.org/torvalds/ds/v6.15-rc6/v6.15-rc5

