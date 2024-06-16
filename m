Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2502442AB6
	for <linux-kernel-announce@vger.kernel.org>; Sun, 16 Jun 2024 21:19:28 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1718572769; cv=none; b=nriqUi7reoyv5RQjuwhEEVUecVEKQEq9xr+6W+8M8JwddPIo61UUQn5ry3l70FhNXdxtOQkW/Tf11OHrQNwRMFD2EOzrPHu6oL1kT3rzsCx/maaNM2pYrWRnOGUckA+ftuo/Ra+wxXgn0mvIzQsSQi3+79QfFi01N/1hsfUp8AY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1718572769; c=relaxed/simple;
	bh=af+VDNYuVg3oWfALklCXncHDZT7c8eLx3WeNvGi0Vjw=;
	h=Content-Type:MIME-Version:Subject:From:To:Date:Message-Id; b=XRDOCdOxz5NOJANcXXDn3EXJ9oglHyk/ItevlXsLwpb8UzS/ObsXTuQg/Tjtn9YYmUu6gNzk/PhEJGWw7vW0p2T3hbpEoYeuPrpqh0DvLxaZhzni2t1Ks2JLMHxnFf4gViFbdQvS0aSAZgduxJzd2xieYG+6Wi3813UpQ6ZzI7o=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=linux.kernel.org;
	s=subspace; t=1718572769;
	bh=af+VDNYuVg3oWfALklCXncHDZT7c8eLx3WeNvGi0Vjw=;
	h=Subject:From:To:Date:From;
	b=uqb7q5tThbvu1OFWmGkPvjWR9tbU2nXYBM1S6mqRBHU3kdn7+xygJbIuZY9tchcNg
	 Qdcp9zxUTHN3K0v4dpTkMZW1M9gSlxnygPK35NJDhuinxTBXREng8D+3KyKiBzu613
	 4yVxE7x+Zdt7djy7NxOUEr3qROaSBdYW/j9lwm9A=
Received: by smtp.kernel.org (Postfix) with ESMTPS id B958BC4AF1C
	for <linux-kernel-announce@vger.kernel.org>; Sun, 16 Jun 2024 21:19:28 +0000 (UTC)
Received: from aws-us-west-2-korg-oddjob-1.ci.codeaurora.org (localhost.localdomain [127.0.0.1])
	by aws-us-west-2-korg-oddjob-1.ci.codeaurora.org (Postfix) with ESMTP id A5D73C41621
	for <linux-kernel-announce@vger.kernel.org>; Sun, 16 Jun 2024 21:19:28 +0000 (UTC)
Content-Type: text/plain; charset="us-ascii"
Precedence: bulk
X-Mailing-List: linux-kernel-announce@vger.kernel.org
List-Id: <linux-kernel-announce.vger.kernel.org>
List-Subscribe: <mailto:linux-kernel-announce+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-kernel-announce+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Subject: Linux kernel 6.10-rc4 released
From: Linux Kernel Distribution System <kdist@linux.kernel.org>
To: linux-kernel-announce@vger.kernel.org
Date: Sun, 16 Jun 2024 21:19:28 +0000
Message-Id: <20240616211928.release-6.10-rc4@kdist.linux.kernel.org>
X-Linux-Kernel-Version: 6.10-rc4
X-Linux-Kernel-Full-URL: https://git.kernel.org/torvalds/t/linux-6.10-rc4.tar.gz
X-Linux-Kernel-Patch-URL: https://git.kernel.org/torvalds/p/v6.10-rc4/v6.9

Linux kernel version 6.10-rc4 is now available:

Full source:    https://git.kernel.org/torvalds/t/linux-6.10-rc4.tar.gz
Patch:          https://git.kernel.org/torvalds/p/v6.10-rc4/v6.9

You can view the summary of the changes at the following URL:
https://git.kernel.org/torvalds/ds/v6.10-rc4/v6.10-rc3

