Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 175E22F852
	for <linux-kernel-announce@vger.kernel.org>; Sat,  1 Feb 2025 18:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1738432835; cv=none; b=WXK3VB4mFal6oyXYOq1O4WcA3zSaaiFZnJMQDVDkSqdHij5zN1+R0iNms32wqhZM7q63my2PpqWGRwoGsX3gqK3k9UfSdgBIR5tiO4xQZglUakBVUv2vdjq1mvy1vd/Eocr9V+QRBijv7X/vRJ0LjH19hSDqjm70cDtwj6E2nHI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1738432835; c=relaxed/simple;
	bh=Mjaf/FkYmFwcvHA4mWIziabncawWtXh7YcQFcP7/F5M=;
	h=Content-Type:MIME-Version:Subject:From:To:Date:Message-Id; b=EkUxvUyB/X+2dUwO55BfQ5bOjsT9RvmuJ5sfOAV4b+lSq7om137GMPAUvqg94RIMpExuZPVpiO7Y5Zrd3tRwaUwBsl36c5Km5FE/AzkWft4UgFbOgx7Ooo6AFwt+/nSZMAXgqtW9nJxuH62fiqTcZ4s65f7hHsmz3igqVphGMQc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=linux.kernel.org;
	s=subspace; t=1738432835;
	bh=Mjaf/FkYmFwcvHA4mWIziabncawWtXh7YcQFcP7/F5M=;
	h=Subject:From:To:Date:From;
	b=v8TLWUw2QJNwpCBm2tOUGx1Jgz6dBLvPJoIYTgJs4FCxJDPqtIOBynoxpE5tlhq1l
	 fZPW7r52N4b8Ti9p4QAC7E1/9xjccwpoRk5RlYYtGqyntgQ60XR1ENwH2YGExkxXhB
	 s25DEoPnsir9qx7eKngqCpKnVqD0KAZEZE2ApoB4=
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 8608FC4CED3
	for <linux-kernel-announce@vger.kernel.org>; Sat,  1 Feb 2025 18:00:34 +0000 (UTC)
Received: from [10.30.226.235] (localhost [IPv6:::1])
	by aws-us-west-2-korg-oddjob-rhel9-1.codeaurora.org (Postfix) with ESMTP id 3B55C380AA68
	for <linux-kernel-announce@vger.kernel.org>; Sat,  1 Feb 2025 18:01:02 +0000 (UTC)
Content-Type: text/plain; charset="us-ascii"
Precedence: bulk
X-Mailing-List: linux-kernel-announce@vger.kernel.org
List-Id: <linux-kernel-announce.vger.kernel.org>
List-Subscribe: <mailto:linux-kernel-announce+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-kernel-announce+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Subject: Linux kernel 6.6.75 released
From: Linux Kernel Distribution System <kdist@linux.kernel.org>
To: linux-kernel-announce@vger.kernel.org
Date: Sat, 01 Feb 2025 18:01:00 +0000
Message-Id: <20250201180100.release-6.6.75@kdist.linux.kernel.org>
X-Linux-Kernel-Version: 6.6.75
X-Linux-Kernel-Full-URL: https://cdn.kernel.org/pub/linux/kernel/v6.x/linux-6.6.75.tar.xz
X-Linux-Kernel-Patch-URL: https://cdn.kernel.org/pub/linux/kernel/v6.x/patch-6.6.75.xz

Linux kernel version 6.6.75 is now available:

Full source:    https://cdn.kernel.org/pub/linux/kernel/v6.x/linux-6.6.75.tar.xz
Patch:          https://cdn.kernel.org/pub/linux/kernel/v6.x/patch-6.6.75.xz
PGP Signature:  https://cdn.kernel.org/pub/linux/kernel/v6.x/linux-6.6.75.tar.sign

You can view the summary of the changes at the following URL:
https://git.kernel.org/stable/ds/v6.6.75/v6.6.74

