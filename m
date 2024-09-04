Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 494881D0482
	for <linux-kernel-announce@vger.kernel.org>; Wed,  4 Sep 2024 11:35:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1725449754; cv=none; b=WUgMojv8hJBLIPrmK1xJky9ZezX4wfQby90j8y6vMVkIzUSFbJQ6+w3lt7bn0NnpNuuzrtZiMQpZuUqWQJozf3LEz9aUcmmdBW8GQTAfxcgsmkmIWlUPr2DzD1D8XSUoCEBj0qhQIS1bS7KExNXJuwTKh5lkn8pYLTcWZ3ap0qk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1725449754; c=relaxed/simple;
	bh=Yjsw0ZAYhyn7vWOP49PH4sTQSQIq6TJGWfNhdqWPE4g=;
	h=Content-Type:MIME-Version:Subject:From:To:Date:Message-Id; b=GShbNDKnR77/T02c7tE3xqXEg4lGIEgE/y86Vxk43XPkOFol/Oyh9H8hBkNBnk833YbnMG5zEAmtD5+czeG8rCNgk6ARjskUa28utXXELW8LG416Af1SqzIwNrrCi3FMIfixV7ZIsXpbn7jMegajmHgg+Bvo/r6c9oc9h5hCqws=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=linux.kernel.org;
	s=subspace; t=1725449754;
	bh=Yjsw0ZAYhyn7vWOP49PH4sTQSQIq6TJGWfNhdqWPE4g=;
	h=Subject:From:To:Date:From;
	b=pHLz350h+1dDyd9uD7A0llqii/xYGTuat7XCzHFghj0icAEJkpHaTfa4Z6IoVUA8X
	 2w50WFi6hMDgSnt5MIhpD9iJntzdLrn5hmv2C1BhXnYSBmXYKXkxJCikzgeg4wQIfW
	 bArArZlBalmF8zsrDk10H8w8pxMo9wzyJh41uJ0g=
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 0AEC3C4CEC6
	for <linux-kernel-announce@vger.kernel.org>; Wed,  4 Sep 2024 11:35:54 +0000 (UTC)
Received: from [10.30.226.235] (localhost [IPv6:::1])
	by aws-us-west-2-korg-oddjob-rhel9-1.codeaurora.org (Postfix) with ESMTP id EF11D3806651
	for <linux-kernel-announce@vger.kernel.org>; Wed,  4 Sep 2024 11:35:55 +0000 (UTC)
Content-Type: text/plain; charset="us-ascii"
Precedence: bulk
X-Mailing-List: linux-kernel-announce@vger.kernel.org
List-Id: <linux-kernel-announce.vger.kernel.org>
List-Subscribe: <mailto:linux-kernel-announce+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-kernel-announce+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Subject: Linux kernel 5.10.225 released
From: Linux Kernel Distribution System <kdist@linux.kernel.org>
To: linux-kernel-announce@vger.kernel.org
Date: Wed, 04 Sep 2024 11:35:54 +0000
Message-Id: <20240904113554.release-5.10.225@kdist.linux.kernel.org>
X-Linux-Kernel-Version: 5.10.225
X-Linux-Kernel-Full-URL: https://cdn.kernel.org/pub/linux/kernel/v5.x/linux-5.10.225.tar.xz
X-Linux-Kernel-Patch-URL: https://cdn.kernel.org/pub/linux/kernel/v5.x/patch-5.10.225.xz

Linux kernel version 5.10.225 is now available:

Full source:    https://cdn.kernel.org/pub/linux/kernel/v5.x/linux-5.10.225.tar.xz
Patch:          https://cdn.kernel.org/pub/linux/kernel/v5.x/patch-5.10.225.xz
PGP Signature:  https://cdn.kernel.org/pub/linux/kernel/v5.x/linux-5.10.225.tar.sign

You can view the summary of the changes at the following URL:
https://git.kernel.org/stable/ds/v5.10.225/v5.10.224

