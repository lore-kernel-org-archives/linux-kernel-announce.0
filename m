Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C07E2265620
	for <linux-kernel-announce@vger.kernel.org>; Sun, 25 Jan 2026 22:40:24 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769380824; cv=none; b=YhXAvF+GbjSWfTO5n/Vcv+u9sA7F/6edPxqdItzIdW0Nx81WMDVictxWVefZdH2xO+smC/Rs2HTNYQePirhrfENJJ4gnstawWqW+t7EEqjA31aWW8q36KPFV/gPYlN1SkLovvwNKJ15Mnp2dkAKOy/TKJwlrZdVkPF5cJOmeTGU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769380824; c=relaxed/simple;
	bh=CjzexvLzdea8jFa6dKTMs30po8Cjil3D5tda2kmaOc8=;
	h=Content-Type:MIME-Version:Subject:From:To:Date:Message-Id; b=rllD6hs3zRng+4RPjYiRKNwbL+wBUaa3azE0EYbMUqmXT11pVTksG6RRDHoZMKZ/OafuJYO4BkOIEZYO8jL4xSDV/zAk15J7fQ2vs0oFhdRFLlheZgus3LKcqTmsEz6Bq8HLQOVj+XGE0Z4XI7k6a3KnpjWUV/b9MqD+o0SEi9Y=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=linux.kernel.org;
	s=subspace; t=1769380824;
	bh=CjzexvLzdea8jFa6dKTMs30po8Cjil3D5tda2kmaOc8=;
	h=Subject:From:To:Date:From;
	b=tr+hqzAknZsA5F4ERlw/dxDBrQwzTdAPAO9iv6RNVryiqug23ejxEJ4oQ6FRcdh4m
	 +UFKjl+p5814Vx/UUsrloXbIOBA1xCgHNuOT4LSWPUcFKKl9y97aJNGHWWK4oueVPb
	 6R+V1a3kDsWdBqBWO+jQpjP4y8amqFQI/1I287kE=
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 8E0D8C4CEF1
	for <linux-kernel-announce@vger.kernel.org>; Sun, 25 Jan 2026 22:40:24 +0000 (UTC)
Received: from [10.30.226.235] (localhost [IPv6:::1])
	by aws-us-west-2-korg-oddjob-rhel9-1.codeaurora.org (Postfix) with ESMTP id 8BF033809A15
	for <linux-kernel-announce@vger.kernel.org>; Sun, 25 Jan 2026 22:40:20 +0000 (UTC)
Content-Type: text/plain; charset="us-ascii"
Precedence: bulk
X-Mailing-List: linux-kernel-announce@vger.kernel.org
List-Id: <linux-kernel-announce.vger.kernel.org>
List-Subscribe: <mailto:linux-kernel-announce+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-kernel-announce+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Subject: Linux kernel 6.19-rc7 released
From: Linux Kernel Distribution System <kdist@linux.kernel.org>
To: linux-kernel-announce@vger.kernel.org
Date: Sun, 25 Jan 2026 22:40:19 +0000
Message-Id: <20260125224019.release-6.19-rc7@kdist.linux.kernel.org>
X-Linux-Kernel-Version: 6.19-rc7
X-Linux-Kernel-Full-URL: https://git.kernel.org/torvalds/t/linux-6.19-rc7.tar.gz
X-Linux-Kernel-Patch-URL: https://git.kernel.org/torvalds/p/v6.19-rc7/v6.18

Linux kernel version 6.19-rc7 is now available:

Full source:    https://git.kernel.org/torvalds/t/linux-6.19-rc7.tar.gz
Patch:          https://git.kernel.org/torvalds/p/v6.19-rc7/v6.18

You can view the summary of the changes at the following URL:
https://git.kernel.org/torvalds/ds/v6.19-rc7/v6.19-rc6

