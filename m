Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id AA81B19C571
	for <linux-kernel-announce@vger.kernel.org>; Fri,  8 Nov 2024 16:00:46 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1731081646; cv=none; b=TDH/QPhScKLv7CRZ7DSmpoofc/BSKxQjXjRJzE7eT3lXN38Od5Z4V3g6D9TfXElLvikbhCrdy6UF8K20AaDIsXqocfeyaSwfgeLwpSVIRZpMJkeTRXv+cabH+gcpSMLwSTU77vyykvJ0CiMRkfQq0qukSgKq7RfhX7PiXEw5ERc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1731081646; c=relaxed/simple;
	bh=2CNY5+U9G0aSjXNcpVpsUeJTpBiIIzj/Da6Ux4WH+pM=;
	h=Content-Type:MIME-Version:Subject:From:To:Date:Message-Id; b=Bej8dgZBbdyZ6+zgPyd7q7qlGwzBhiGHvHE8JLWpnVrl2gSJjyFXMrNWKv9ixeBro19anqqrijUcnzmubNCgfTJJq5DPmX4lQUpnMUQy/1qHRHzSQFWYA5BfIVTD8IASJ3a8Sa0rp68Z1luDxWabgy9FtCssWEBJ/q3SDjIHgmo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=linux.kernel.org;
	s=subspace; t=1731081646;
	bh=2CNY5+U9G0aSjXNcpVpsUeJTpBiIIzj/Da6Ux4WH+pM=;
	h=Subject:From:To:Date:From;
	b=EWpxAbf1dhrwIRKJ1LNKHCsutNxN1L6ewfGaPtYpVLniCv2ljmZ9jfzqE+AKrp25S
	 q4xwiTVlBkzx6AuB8MZmQNkIA8rz3GcgFyYcjempwomX5HBpZINlIEisZ8l3uApmAR
	 tBgSNWCcXvcFqWF3jcPvK3+FTupYKk0YMwjRivRk=
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 2D4B7C4CECD
	for <linux-kernel-announce@vger.kernel.org>; Fri,  8 Nov 2024 16:00:46 +0000 (UTC)
Received: from [10.30.226.235] (localhost [IPv6:::1])
	by aws-us-west-2-korg-oddjob-rhel9-1.codeaurora.org (Postfix) with ESMTP id B16933809A80
	for <linux-kernel-announce@vger.kernel.org>; Fri,  8 Nov 2024 16:00:56 +0000 (UTC)
Content-Type: text/plain; charset="us-ascii"
Precedence: bulk
X-Mailing-List: linux-kernel-announce@vger.kernel.org
List-Id: <linux-kernel-announce.vger.kernel.org>
List-Subscribe: <mailto:linux-kernel-announce+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-kernel-announce+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Subject: Linux kernel 6.6.60 released
From: Linux Kernel Distribution System <kdist@linux.kernel.org>
To: linux-kernel-announce@vger.kernel.org
Date: Fri, 08 Nov 2024 16:00:55 +0000
Message-Id: <20241108160055.release-6.6.60@kdist.linux.kernel.org>
X-Linux-Kernel-Version: 6.6.60
X-Linux-Kernel-Full-URL: https://cdn.kernel.org/pub/linux/kernel/v6.x/linux-6.6.60.tar.xz
X-Linux-Kernel-Patch-URL: https://cdn.kernel.org/pub/linux/kernel/v6.x/patch-6.6.60.xz

Linux kernel version 6.6.60 is now available:

Full source:    https://cdn.kernel.org/pub/linux/kernel/v6.x/linux-6.6.60.tar.xz
Patch:          https://cdn.kernel.org/pub/linux/kernel/v6.x/patch-6.6.60.xz
PGP Signature:  https://cdn.kernel.org/pub/linux/kernel/v6.x/linux-6.6.60.tar.sign

You can view the summary of the changes at the following URL:
https://git.kernel.org/stable/ds/v6.6.60/v6.6.59

