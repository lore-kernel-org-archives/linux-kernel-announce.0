Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4CF863009EE
	for <linux-kernel-announce@vger.kernel.org>; Wed, 25 Mar 2026 10:25:31 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774434332; cv=none; b=nFrzFnq/boDMS8pdLedV4KZQqoXzbxPSmvOgifjgmxblNeRWWhSJG6oavr3qxSN8g0VNYUd9/p5aP6dsySFgcZtGUWC7bGGknALZ33t9EcV+dCiS56ozrRI2YXQ7qKAfg9iAN2anrgx/X0bQgTAIoBy4HApzjoQV0YBmjg+12qE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774434332; c=relaxed/simple;
	bh=Z+ZY4Nqd+LNfjVEMrjyl9MwWakRmAmiykgU9NwZOy8w=;
	h=Content-Type:MIME-Version:Subject:From:To:Date:Message-Id; b=FKRGveWYOY9R18aZRytEpZrgvYdI5mv4HSWhIjE53T3eEhFmI0Vw8R06LCt1G6fZhufdZzMQydQNdS1gSg0G425Vi9qBtBuePSiGSL5dK78opY2uqLe35PYrQsQhhryWdJM8q7iRgJajA1pxggQ6okkcGWaBrz6zE5ssnS1zXbg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=linux.kernel.org;
	s=subspace; t=1774434332;
	bh=Z+ZY4Nqd+LNfjVEMrjyl9MwWakRmAmiykgU9NwZOy8w=;
	h=Subject:From:To:Date:From;
	b=e3kQFzQ5t4UAk+CZj5oV+Y1QQ9ypTWosko+VWuV2OUM1Fx1s71SOrbiu+4TZigyJm
	 ah8A7yaIk4OvQvXKPf6J/UL2TDROWNWIwMbZdeFH53gTXLejWNK9HWijEXm/J5lo0H
	 9t0If9KN9Hvc969OCY9cBIB30bD8NYiPMQOsSvjA=
Received: by smtp.kernel.org (Postfix) with ESMTPSA id E12BAC4CEF7
	for <linux-kernel-announce@vger.kernel.org>; Wed, 25 Mar 2026 10:25:31 +0000 (UTC)
Received: from [10.30.226.235] (localhost [IPv6:::1])
	by aws-us-west-2-korg-oddjob-rhel9-1.codeaurora.org (Postfix) with ESMTP id 7FB68380820D
	for <linux-kernel-announce@vger.kernel.org>; Wed, 25 Mar 2026 10:25:20 +0000 (UTC)
Content-Type: text/plain; charset="us-ascii"
Precedence: bulk
X-Mailing-List: linux-kernel-announce@vger.kernel.org
List-Id: <linux-kernel-announce.vger.kernel.org>
List-Subscribe: <mailto:linux-kernel-announce+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-kernel-announce+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Subject: Linux kernel 6.6.130 released
From: Linux Kernel Distribution System <kdist@linux.kernel.org>
To: linux-kernel-announce@vger.kernel.org
Date: Wed, 25 Mar 2026 10:25:19 +0000
Message-Id: <20260325102519.release-6.6.130@kdist.linux.kernel.org>
X-Linux-Kernel-Version: 6.6.130
X-Linux-Kernel-Full-URL: https://cdn.kernel.org/pub/linux/kernel/v6.x/linux-6.6.130.tar.xz
X-Linux-Kernel-Patch-URL: https://cdn.kernel.org/pub/linux/kernel/v6.x/patch-6.6.130.xz

Linux kernel version 6.6.130 is now available:

Full source:    https://cdn.kernel.org/pub/linux/kernel/v6.x/linux-6.6.130.tar.xz
Patch:          https://cdn.kernel.org/pub/linux/kernel/v6.x/patch-6.6.130.xz
PGP Signature:  https://cdn.kernel.org/pub/linux/kernel/v6.x/linux-6.6.130.tar.sign

You can view the summary of the changes at the following URL:
https://git.kernel.org/stable/ds/v6.6.130/v6.6.129

